import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _body(),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: "hello",
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    child: Column(
                      children: [
                        ClipRRect(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: InputBorder.none,
                              prefixIcon: Container(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Search",
                            ),
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.settings,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  // alignment: Alignment.bottomLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/background.png",
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage("assets/avatar.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 40,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 25,
                            width: 25,
                            color: Colors.white,
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            child: Icon(Icons.edit),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name Surname",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("Junior Flutter developer"),
                  Text("DigitalPomegranate Gyumri Armenia"),
                  Row(children: [
                    Text("Armenia"),
                    Text("48 canditats", style: TextStyle(color: Colors.blue))
                  ]),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.1),
                ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Search new roll"),
                          Text(
                            "Cm.all info",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.edit,
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  Row(children: [
                    Icon(Icons.remove_red_eye),
                    Text("Any text"),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
