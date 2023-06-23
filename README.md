# Flutter Generate Colors
## 📖 Main objectives:
- [X] Create a screen that changes the backgrund color every time the user taps on it;
- [X] Create the generate color and random number functions without libraries;
- [X] Use the base template with the default actions and linters.
  
## 📖 Secondary objectives:
- [X] Created two unitary tests to make sure that the main objectives are working properly;
- [X] Added smooth animation to the color changing behavior;
- [X] Created an organized README.md to improve the documentation.


# Showcase

## IOS 
<p align="center">
  <img src="/gifs/ios_sample.gif" width="30%" />
</p>

## Android 🤖

<p align="center">
  <img src="/gifs/android_sample.gif" width="30%" />
</p>

# Features descriptions

Generate random colors algorithm: The idea here was, firstly, generating random numbers from 0 to 255, because with these number I could use them into the RGB spectrum and take any color. After using native methods from Dart and generating the random colors, I had to shuffle the List and take the very first element (actually I could take any element from the list, because it was entirely shuffled, however to make it clear and simple I preferred taking the first element). Now, with the random number I filled them into the fromRgb() method of Colors class to generate the desired random colors.

OBS: I was having a specific problem with the action "Dart Code Metrics" and it looks like a problem with generated projects from the template, I found this Issue documented in the template's repository [here](https://github.com/solid-software/flutter_project_template/issues/12). So, in order not to be blocked by this issue, I skipped and let the other actions run.
