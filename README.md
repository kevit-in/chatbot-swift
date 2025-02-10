# chatbot-swift

# Installing SDK
Add a the Swift Package Manager Dependency to your project

```
.package(url: "https://github.com/kevit-in/chatbot-swift", from: "1.0.3")
```

# import the framework
In your preferred file import the framework as below
```import ios_chatbot_framework```
 
# Initialize bot design (Optional)
```let botDesign = ChatBotDesign(botTitle: "HELLO WORLD", header: ChatBotDesign.Style(bgColor: "#e2a387", txtColor: "#ffffff"), agent: ChatBotDesign.Style(bgColor: "#e2a387", txtColor: "#ffffff"), user: ChatBotDesign.Style(bgColor: "#e2e2e2", txtColor: "#444444"))```

# Initiailize User Input (Optional)

```
let pairs = [("email", "test@123.com")]
let userInput = Dictionary(uniqueKeysWithValues: pairs)
```
        
# Initialize the ChatBot 
```let model = ChatBotModel(appId: "<appId>", appSecret: "<appSecret>", botDesign: botDesign, userInput: userInput, botUrl: "<botUrl>", socketUrl: "<socketUrl>")```



# Initialize the ChatBot with the details 
```ChatBot.shared.initialize(model: model)```


# Show the ChatBot screen
```ChatBot.shared.show()```
