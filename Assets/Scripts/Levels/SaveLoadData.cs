﻿using System.Collections;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;
using System.Linq;  // Add this directive

namespace LevelUnlock
{

    public class SaveLoadData : MonoBehaviour
    {
        private static SaveLoadData instance;
        private string baseURL = "http://localhost/www/UnityLoginLogoutRegister/save_load_data.php";

        public static SaveLoadData Instance { get => instance; }

        private void Awake()
        {
            if (instance == null)
            {
                instance = this;
                DontDestroyOnLoad(gameObject);
            }
            else
            {
                Destroy(gameObject);
            }
        }

        // Method to initialize the SaveLoad Script
        public void Initialize(int userId)
        {
            if (PlayerPrefs.GetInt("GameStartFirstTime") == 1)
            {
                LoadData(userId);
            }
            else
            {
                SaveData(userId, 1, "0", 0); // Initialize with default values
                PlayerPrefs.SetInt("GameStartFirstTime", 1);
            }
        }

        // COMENTADO PORQUE GENERA PROBLEMAS
        // This is a Unity method which is called when the game is paused, in background, or quit
        // private void OnApplicationPause(bool pause)
        // {
        //     if (pause)
        //     {
        //         int userId = PlayerPrefs.GetInt("accountUserId", -1);
        //         if (userId != -1)
        //         {
        //             SaveData(userId, LevelSystemManager.Instance.CurrentLevel, "0", 0);
        //         }
        //     }
        // }

        public void SaveData(int userId, int levelId, string completionStatus, int score)
        {
            StartCoroutine(SaveDataCoroutine(userId, levelId, completionStatus, score));
        }

        IEnumerator SaveDataCoroutine(int userId, int levelId, string completionStatus, int score)
        {
            WWWForm form = new WWWForm();
            levelId = levelId +1;

            Debug.Log("PRUEBA "+levelId);
            form.AddField("action", "save");
            form.AddField("userId", userId);
            form.AddField("levelId", levelId);
            form.AddField("completionStatus", completionStatus);
            form.AddField("score", score);

            UnityWebRequest www = UnityWebRequest.Post(baseURL, form);
            yield return www.SendWebRequest();

            if (www.result != UnityWebRequest.Result.Success)
            {
                Debug.LogError("Error saving data: " + www.error);
            }
            else
            {
                string jsonResponse = www.downloadHandler.text;
                jsonResponse = "{\"levels\":" + jsonResponse + "}";
                Debug.Log("SAVE: " + jsonResponse);
                LevelDataWrapper wrap = JsonUtility.FromJson<LevelDataWrapper>(jsonResponse);

                if (wrap != null && wrap.levels != null)
                {
                    LevelSystemManager.Instance.LevelData.levelItemArray = wrap.levels;

                    int lastCompletedLevel = wrap.levels
                        .Where(level => level.completion_status == "1")
                        .Select(level => int.Parse(level.level_id))
                        .DefaultIfEmpty(0)
                        .Max();

                    int nextLevelToUnlock = lastCompletedLevel + 1;
                    LevelSystemManager.Instance.LevelData.lastUnlockedLevel = nextLevelToUnlock;

                    Debug.Log("Data Loaded and Updated. Next level to unlock: " + nextLevelToUnlock);
                }
                else
                {
                    Debug.LogError("Failed to parse JSON response.");
                }
            }
        }

        public void LoadData(int userId)
        {
            StartCoroutine(LoadDataCoroutine(userId));
        }
        public IEnumerator LoadDataCoroutine(int userId)
        {
            WWWForm form = new WWWForm();
            form.AddField("action", "load");
            form.AddField("userId", userId);

            UnityWebRequest www = UnityWebRequest.Post(baseURL, form);
            yield return www.SendWebRequest();

            if (www.result != UnityWebRequest.Result.Success)
            {
                Debug.LogError("Error loading data: " + www.error);
            }
            else
            {
                string jsonResponse = www.downloadHandler.text;


                // Wrap the JSON array in an object if necessary
                jsonResponse = "{\"levels\":" + jsonResponse + "}";
                Debug.Log("LOAD: " + jsonResponse);
                LevelDataWrapper wrapper = JsonUtility.FromJson<LevelDataWrapper>(jsonResponse);

                if (wrapper != null && wrapper.levels != null)
                {
                    // Assuming LevelSystemManager expects a different structure
                    LevelSystemManager.Instance.LevelData.levelItemArray = wrapper.levels;

                    // Find the highest completed level
                    int lastCompletedLevel = wrapper.levels
                        .Where(level => level.completion_status == "1") // Comparison as string
                        .Select(level => int.Parse(level.level_id))
                        .DefaultIfEmpty(0)
                        .Max();

                    // Enable the next level
                    int nextLevelToUnlock = lastCompletedLevel + 1;
                    LevelSystemManager.Instance.LevelData.lastUnlockedLevel = nextLevelToUnlock;

                    Debug.Log("Data Loaded and Updated. Next level to unlock: " + nextLevelToUnlock);
                }
                else
                {
                    Debug.LogError("Failed to parse JSON response.");
                }
            }
        }

        public void ClearData()
        {
            Debug.Log("Data Cleared");

            var levelData = LevelSystemManager.Instance.LevelData;
            levelData.lastUnlockedLevel = 0;
            for (int i = 0; i < levelData.levelItemArray.Length; i++)
            {
                levelData.levelItemArray[i].completion_status = "0";
                levelData.levelItemArray[i].score = "0";
            }

            SaveData(PlayerPrefs.GetInt("accountUserId", -1), 1, "0", 0); // Reset data
            PlayerPrefs.SetInt("GameStartFirstTime", 0);
        }
        // En SaveLoadData.cs
        public int GetCurrentLevel()
        {
            return LevelSystemManager.Instance.CurrentLevel;
        }

        public int GetNextUnlockedLevel()
        {
            return LevelSystemManager.Instance.CurrentLevel + 1; // O ajusta según tu lógica
        }
    }

    [System.Serializable]
    public class LevelData
    {
        // public int lastUnlockedLevel = 1;   // Reference to lastUnlockedLevel
        public int lastUnlockedLevel;           // Reference to lastUnlockedLevel
        public LevelItem[] levelItemArray;    // Reference to level data
    }

    [System.Serializable]
    public class LevelItem
    {
        public string level_id;
        public string level_name;
        public string completion_status;
        public string score;
        // public void Reset()
        // {
        //     completion_status = false;
        //     score = "0";
        // }
    }
    [System.Serializable]
    public class LevelDataWrapper
    {
        public LevelItem[] levels;
    }


}
