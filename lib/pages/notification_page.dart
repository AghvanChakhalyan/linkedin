import 'package:flutter/material.dart';
import 'package:linkedin/pages/qr_code_page.dart';
import 'message_page.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(5),
        child: Column(
         
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image(image: AssetImage("assets/avatar.png")),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 150,
                    padding: EdgeInsets.all(5),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 1),
                        child: ClipRRect(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade300,
                              border: InputBorder.none,
                              prefixIcon: Container(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Search",
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) {
                                      return QrCodePage();
                                    }),
                                  );
                                },
                                child: Container(
                                  child: Icon(
                                    Icons.qr_code_scanner,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MessagesPage();
                    }));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.messenger_sharp,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            _notificationData(),
          ],
        ),
      ),
    );
  }

  Widget _notificationData() {
    return Container(
      margin: EdgeInsets.all( 5),
      child: Column(
          children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.blue.shade200,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Mery Stepanyan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "see your account",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: GestureDetector(
                        onTap: (){
                          print ("see");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Text(
                            "see oll seeng",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children:[
                    Container(

                      child: GestureDetector(
                        child: Column(
                          children: [
                            Icon(
                              Icons.more_vert,
                              ),
                              Text (
                                "8 hour.",
                              ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.blue.shade200,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Toptal",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "loked this master",
                          overflow: TextOverflow.ellipsis,
                        ),
                       
                      ],
                    ),
                     Text(
                          "React Developer - Full-time, Remote.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "see this and 4 recomented .. ",
                        ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: GestureDetector(
                        onTap: (){
                          print ("see");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Text(
                            "see vacansi",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children:[
                    Container(

                      child: GestureDetector(
                        child: Column(
                          children: [
                            Icon(
                              Icons.more_vert,
                              ),
                              Text (
                                "1 day.",
                              ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.blue.shade200,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Your profile iz louked ",
                          
                        ),
                        Text(
                          "1 ones",
                         style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "in this week",
                        ),
                       
                      ],
                    ),
                    
                  ],
                ),
                Spacer(),
                Column(
                  children:[
                    Container(

                      child: GestureDetector(
                        child: Column(
                          children: [
                            Icon(
                              Icons.more_vert,
                              ),
                              Text (
                                "1 week.",
                              ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.blue.shade200,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Business Development Group and"
                            ),
                            Row(
                              
                              children: [
                              Text(
                                "1 condact "
                              ),
                               Text(
                          "is oked",
                          style: TextStyle(
                            
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "this events",
                          overflow: TextOverflow.ellipsis,
                        ),
                              ],
                            ),
                          ],
                        ),
                       
                      ],
                    ),
                     
                        Text(
                          "<<մասնագիտություններ․ վերազինում|...",
                        ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: GestureDetector(
                        onTap: (){
                          print ("see");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Text(
                            "see events",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children:[
                    Container(

                      child: GestureDetector(
                        child: Column(
                          children: [
                            Icon(
                              Icons.more_vert,
                              ),
                              Text (
                                "5 day.",
                              ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
