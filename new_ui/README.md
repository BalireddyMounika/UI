#  RASA Chatbot with Custom UI In Mobile App (Flutter) 

<img src="https://vivifyassets.s3.ap-south-1.amazonaws.com/TechStack_final.png" align="right" width="250"/> 
<img src="https://user-images.githubusercontent.com/92524410/217502426-8454bf20-7da8-4536-a049-a6bb7e96b09a.png" width="180"/> 

<h1 font-size="50px" align="center">RASA Chatbot with Custom UI In Mobile App(Flutter)</h1>

 About : 

 A chatbot is a computer program that is designed to simulate human conversation and interact with users through text messages. Chatbots are often used in mobile applications to provide automated customer support, deliver personalized experiences, and assist users with various tasks.

How it works :
  
- The user interacts with the chatbot through a text interface within the mobile application.  

- The chatbot identifies the intent behind the user's message, which represents the user's goal or the action they want to perform. For example, the intent could be to get product information, make a reservation, or ask a question.

- The chatbot sends the response back to the user through the mobile application's interface. The user can then view or listen to the response and continue the conversation by providing further input or asking follow-up questions.

Purpose : 

Mobile apps often require customer support to address user queries, provide assistance, and resolve issues. Chatbots can offer instant and automated responses, reducing the need for manual customer support and ensuring quick resolution.Chatbots can automate various tasks within a mobile app, such as booking appointments, placing orders, or providing information from databases. This streamlines user workflows, saves time, and enhances convenience.

Requirements : 

- Dart: 
 
    The latest stable version of Dart at the time was Dart 2.14+.
You can visit the official Dart website [Dart SDK](https://dart.dev/guides).

- Flutter: 
 
  The latest stable version of Flutter was Flutter 2.5+. You can visit the official Flutter website [Flutter](https://flutter.dev/). 

- Android Studio: At the time of my knowledge cutoff, Android Studio 4.2+ was the latest stable version.you can visit the official Android Studio website [Andriod studio](https://developer.android.com/studio).

- Take a Bot URL that should be in webhooks. For example, ``http://ivinbot.vivifyhealthcare.com/:0000/webhooks/rest/webhook`` .
Please replace with your webhook URL for the BOT.

```
NOTE : This Custom UI in Flutter is compatible with the "Provider State Managmenmet".
```

Process :
 
 - Clone this respository and open in Android Studio.
 - Now, open the pubspec.yaml file and do pubget.
 - Now, click on the enable dart support.
 - Then open the emulator, run the main.dart file.
 - You will get like below

   <img src="https://vivifyassets.s3.ap-south-1.amazonaws.com/image+(8).png" width="250">
 

 - Now, click on message icon and send a "Hi" message to get the response from the bot.
 
   <img src="https://vivifyassets.s3.ap-south-1.amazonaws.com/image+(11).png" width="250">

 Developer :
<h5>
Below code snippet for UI, When bot or User send/receive the message then bubble widget will be build with the response and UI will be refreshed. 
for bubble widget, we used bubble package in pubspec.yaml
if you want to change the bubble widget, by changing below code.

<br>
</h5>

 ```
 Widget buildItem(String item, animation, int index) {
    bool mine = item.endsWith('<bot>');
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
          margin: const EdgeInsets.only(left: 15.0),
          alignment: mine ? Alignment.topLeft : Alignment.topRight,
          child: mine
              ? Container(
                  color: mine ? Colors.white : Colors.blue,
                  child: mg(item, index),
                )
              : Bubble(
                  alignment: Alignment.topRight,
                  color: Colors.white,
                  child: mg(item, index),
                )),
    );
  }
 ```
  - We are classifying the buttons, images and text in the method of getresponse from the Bot URL and those responses are adding to the list and we are calling the UI in setstate method to refresh the screen by the refrence of the list.
  
