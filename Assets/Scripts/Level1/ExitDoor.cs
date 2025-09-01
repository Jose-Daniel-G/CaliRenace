using UnityEngine;
using UnityEngine.SceneManagement;

public class ExitDoor : MonoBehaviour
{
    public string sceneName;  // Scene to load
    public string exitDoorName; // Unique ID for this door

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Return)) 
        {
            // Save door ID before leaving
            PlayerPrefs.SetString("LastExitDoor", exitDoorName);
            PlayerPrefs.SetInt("HasBeenInScene1", 1); // Mark that we've visited Scene 1
            PlayerPrefs.Save();

            // Load the next scene
            SceneManager.LoadScene(sceneName);
        }
    }
}
