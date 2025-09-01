using UnityEngine;

public class GameManagerLv1 : MonoBehaviour
{
    public static GameManagerLv1 Instance;
    private Vector3 newPlayerPosition;
    private bool shouldSetPosition;

    void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject); // Evita que se destruya al cambiar de escena
        }
        else
        {
            Destroy(gameObject);
        }
    }

    public void SetPlayerPosition(Vector3 position)
    {
        newPlayerPosition = position;
        shouldSetPosition = true;
    }

    void Update()
    {
        if (shouldSetPosition)
        {
            // Asegúrate de tener una referencia al jugador en GameManagerLv1
            GameObject player = GameObject.FindWithTag("Player"); // Suponiendo que el jugador tiene la etiqueta "Player"
            if (player != null)
            {
                player.transform.position = newPlayerPosition;
                shouldSetPosition = false; // Resetear para evitar reubicaciones no deseadas
            }
        }
    }
}
