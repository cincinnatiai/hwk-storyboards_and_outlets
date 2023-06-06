# hwk-storyboards_and_outlets

TODO:

* Create a branch with name: "yourname/feature1"
* Add a label, an edit text, and a button.
  * The views should be laid down in that order
  * the label should say "can you guess my number? (it is between 1 and 6)"
  * The edit text should have a hint saying "write your guess here"
  * When clicking the edit text, I should see a num pad, instead of the regular keyboard
  * The button's text should say "try your luck!"
  * The views should be centered horizontally and account for different phone sizes
* Create the necessary IbOutlets and actions so that:
  * The button should be enabled if and only if there is something in the editText (check the available IbActions)
  * when the user clicks the button, you read the user's input and then clear the edit text
    * If it is not a number, the label should say "oops, numbers only!"
    * If it is a number, generate a random "taget" between 1 and 6, and check if the guess matches the target.
      * If there is a match, change the label to "great!, now dare again"
      * If there is no match, change the label to "almost there. your guess was (guess), and the actual value was (target)
* Create a pr

