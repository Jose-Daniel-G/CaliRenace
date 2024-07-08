using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace LevelUnlockSystem
{
    public class WinZone : MonoBehaviour
    {
        [SerializeField] private GameObject lockObj, unlockObj;     //ref to lock and unlock gameobject
        [SerializeField] private Image[] starsArray;                //ref to all the stars of button
        [SerializeField] private Text levelIndexText;               //ref to text which indicate the level number
        [SerializeField] private Color lockColor, unlockColor;      //color references
        [SerializeField] private Button btn;                        //ref to hold button component
        [SerializeField] private GameObject activeLevelIndicator;
        private int levelIndex;                                     //int which hold the level Index this perticular button specify


        void Start()
        {

            // winText.gameObject.SetActive (false);
        }


        void OnTriggerEnter2D(Collider2D other)
        {
          //load the level
            if (other.CompareTag("MainCar"))
            {           
                LevelSystemManager.Instance.CurrentLevel = levelIndex - 1;  //set the CurrentLevel, we subtract 1 as level data array start from 0
                SceneManager.LoadScene("Tetris"); 
                // SceneManager.LoadScene("Level" + levelIndex); 
            //     winText.SetActive(true);
            }  
        }

        public void SetLevelButton(LevelItem value, int index, bool activeLevel)        
        {
         if (value.unlocked)                                     //if unlocked is true
            {
                activeLevelIndicator.SetActive(activeLevel);
                levelIndex = index + 1;                             //set levelIndex, Note: We add 1 because array start from 0 and level index start from 1 
                btn.interactable = true;                            //make button interactable
                lockObj.SetActive(false);                           //deactivate lockObj
                unlockObj.SetActive(true);                          //activate unlockObj
                SetStar(value.starAchieved);                        //set the stars
                levelIndexText.text = "" + levelIndex;              //set levelIndexText text

            }
            else
            {
                btn.interactable = false;                           //remove button interactable
                lockObj.SetActive(true);                            //activate lockObj
                unlockObj.SetActive(false);                         //deactivate unlockObj
            }
        }
        private void SetStar(int starAchieved)
        {
            starAchieved=3;
            for (int i = 0; i < starsArray.Length; i++)             //loop through entire star array
            {

                if (i < starAchieved)
                {
                    starsArray[i].color = unlockColor;              //set its color to unlockColor
                }
                else
                {
                    starsArray[i].color = lockColor;                //else set its color to lockColor
                }
            }
        }
    }
}
