import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChatApp(),
  ));
}

class ChatApp extends StatefulWidget {
  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {

  List<String> _avatarUrl = [
    "https://images.unsplash.com/photo-1573890990305-0ab6a7195ab6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://cdn.pixabay.com/photo/2020/06/26/03/54/young-5341577__340.jpg",
    "https://images.unsplash.com/photo-1545130368-4c55e2418062?ixlib=rb-1.2.1&auto=format&fit=crop&w=926&q=80",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1470441623172-c47235e287ee?ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80",
    "https://cdn.pixabay.com/photo/2017/12/01/08/02/paint-2990357__340.jpg",
    "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814__340.jpg",
    "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814__340.jpg",
    "https://images.unsplash.com/photo-1535201344891-231e85e83c8a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1535201344891-231e85e83c8a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1535201344891-231e85e83c8a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
  ];

  //Avatar widget
  Widget avatarWidget(String urlImg, double radius) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            image: NetworkImage(urlImg),
          )),
    );
  }


  Widget storyButton(String urlImg, double radius) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Stack(
          children: [
            Container(
              width: radius,
              height: radius,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    image: NetworkImage(urlImg),
                  )),
            ),
            Positioned(
              right: 0.0,
              bottom:0.0 ,
              child: Container(
                height: 17.0,
                width: 17.0,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(15.0)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget listItem(
      String urlImg, String userName, String, message, String hour) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        child: Container(
          child: Row(
            children: [
              avatarWidget(urlImg, 60.0),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      message,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                hour,
                style: TextStyle(
                  color: Colors.grey[50],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 35.0),
          child: Column(
            children: [

              Row(
                children: [

                  avatarWidget(_avatarUrl[0], 50.0),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Messages",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 0.0,
                    padding: EdgeInsets.all(8.0),
                    color: Colors.blue,
                    shape: CircleBorder(),
                    child: Icon(Icons.edit, color: Colors.white),
                  )
                ],
              ),

              SizedBox(
                height: 20.0,
              ),
              TextField(

                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    hintText: "Search",
                    alignLabelWithHint:true,
                    contentPadding: EdgeInsets.only(left: 34.0),
                    filled: true,
                    fillColor: Colors.indigo,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              //
              Container(
                height: 60.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    MaterialButton(
                      onPressed: () {},
                      elevation: 0.0,
                      padding: EdgeInsets.all(8.0),
                      color: Colors.pinkAccent,
                      shape: CircleBorder(),
                      child: Icon(Icons.add, color: Colors.grey[300]),
                    ),
                    //Now let's create our storybutton widget
                    storyButton(_avatarUrl[1], 60.0),
                    storyButton(_avatarUrl[2], 60.0),
                    storyButton(_avatarUrl[3], 60.0),
                    storyButton(_avatarUrl[4], 60.0),
                    storyButton(_avatarUrl[5], 60.0),
                    storyButton(_avatarUrl[6], 60.0),
                    storyButton(_avatarUrl[7], 60.0),
                    storyButton(_avatarUrl[2], 60.0),
                    storyButton(_avatarUrl[8], 60.0),
                    storyButton(_avatarUrl[10], 60.0),

                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              //
              Expanded(
                child: ListView(
                  children: [

                    listItem(
                        _avatarUrl[2], "David", String, "Wassup????", "9:50PM"),
                    listItem(_avatarUrl[3], "kasidie", String,
                        "We are waiting for you", "8:39PM"),
                    listItem(_avatarUrl[4], "Natalia", String,
                        "Hey can you help me", "8:51AM"),
                    listItem(_avatarUrl[5], "Suizie", String, "thank you see you",
                        "Yesterday"),
                    listItem(_avatarUrl[7], "Alex", String, "Hey how is going on",
                        "Yesterday"),
                    listItem(_avatarUrl[8], "Deivid", String, "okey man see you later",
                        "Mon, 3:20AM"),
                    listItem(_avatarUrl[10], "Mary", String, "no problem",
                        "Mon, 6:58AM"),
                    listItem(_avatarUrl[2], "Kane", String, "I cant remember you",
                        "Yesterday"),
                    listItem(_avatarUrl[1], "Deivid", String, "hi",
                        "Mon, 7:35AM"),
                    listItem(_avatarUrl[0], "Carlos", String, "done",
                        "Yesterday"),


                  ],
                ),
              )
            ],
          ),
        ),
      ),

      //
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Chat"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text("Friend Requests"),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            title: Text("My Account"),

          ),
        ],
      ),
    );
  }
}