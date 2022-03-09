# Challange
In this example I used the publicly available json file and the link for the json is https://www.reddit.com/.json where we can find the structure of the json and data type. Form this URL I displayed the properties such as image, title, comments, and total score into IOS App. For this approach I used Swift UI which is most recommend compared to Swfit UIKit. Also, the API key is not required for the implementation of the project. Here are the following points I have covered from this example. In this Json there some data and image which is currently nil or empty, that why some image fields are nil when App is running on Device. The architecture was used is MVVM. 

Performance : For this example, I used Swift UI framework which gives us batter performance compare with using storyboard and Swfit UIkit . It also gives batter control on code and support live preview on the design. Swift UI much faster than UIKit.

Readability : Traditional we used the closure or third-party framework to handle the network call but when we have multiple networks, we have written lot of boiler plate code, this is when the code loose readability. In swift 5.5 version introduced async and wait function to process the code asynchronously, for this reason it increases the readability and reduce boiler plate code. Also, we can use new concept Actor to update the UI automatically instated of using reload method again and again. 

Maintainability : By using the async and wait methods, the code is easy to maintain and modifiable. 

Testability : We can perform the UI Unit and Unit test as well. In this case I used only unit test only for purpose of this demo.  Testing is important in any software or Apps development to fix the bugs quickly and run the apps more efficiently. 
  
Scalability : The Swift UI framework highly scalable compared to another framework. It gives better performance and better scalability. 

Simplicity : In this demo I used the async and wait , MainaActor which provide batter fixability to write less code and increase the simplicity of the code. 

 

