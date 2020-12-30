import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  List<String> _locations = [
    'All',
    'not red',
    'my condacts',
    'inMail',
    'safes',
    'spam'
  ];

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
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Sms",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.edit_road_rounded),
                    ),
                  ),
                  Container(
                      child: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.more_vert),
                  ))
                ],
              ),
            ),
            Container(
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
                    suffixIcon: DropdownButton(
                      icon: Icon(Icons.tune),
                      onChanged: (newValue) {
                        setState(() {});
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: Text(location),

                          value: location,
                          // Text(location),
                        );
                      }).toList(growable: false),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25,right: 25, top: 10,),
              child: Row(
                
               children: [
                 Container(
                   margin: EdgeInsets.only(right: 5),
                   width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
                   child: Icon(
                    Icons.person,
                   ),
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Linkedin"),
                     Text("your : sms..."),
                    
                   ],
                 ),
                 Spacer(),
                 Text("27aug."),
               ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
