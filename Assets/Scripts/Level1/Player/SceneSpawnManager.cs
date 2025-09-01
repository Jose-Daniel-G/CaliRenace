using UnityEngine;

public class SceneSpawnManager : MonoBehaviour
{
    public Transform defaultSpawnPoint; // Assign this in the Inspector

    void Start()
    {
        int hasBeenInScene1 = PlayerPrefs.GetInt("HasBeenInScene1", 0);
        string lastExitDoor = PlayerPrefs.GetString("LastExitDoor", "");

        if (hasBeenInScene1 == 1 && !string.IsNullOrEmpty(lastExitDoor))
        {
            GameObject entryDoor = GameObject.Find(lastExitDoor);
            if (entryDoor != null)
            {
                transform.position = entryDoor.transform.position;
                return; // Exit to prevent spawning at default
            }
        }

        // If it's the first time in Scene 1, spawn at default
        transform.position = defaultSpawnPoint.position;
    }
}
