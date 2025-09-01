using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

using UnityEngine;

public class Door : MonoBehaviour
{
    //  public Vector3 spawnPosition; 

    private Animator doorAnimation;
    public Vector3 targetPosition;

    void Start()
    {

        doorAnimation = GetComponent<Animator>();
    }

    public string sceneName;

    // Update se llama una vez por cuadro
    void Update()
    {
        if (doorAnimation.GetBool("isOpen"))
        {
            // Detecta si se presiona la tecla Enter
            if (Input.GetKeyDown(KeyCode.Return)) // KeyCode.Return es la tecla Enter
            {

                // Save the position before loading the scene
                PlayerPrefs.SetFloat("SpawnX", targetPosition.x);
                PlayerPrefs.SetFloat("SpawnY", targetPosition.y);
                PlayerPrefs.SetFloat("SpawnZ", targetPosition.z);
                PlayerPrefs.Save();
                
                // Cambia a la escena especificada
                SceneManager.LoadScene(sceneName);
            }
        }
    }
}
