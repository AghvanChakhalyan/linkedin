import 'package:flutter/material.dart';
import 'package:linkedin/pages/qr_code_page.dart';
import 'message_page.dart';

class MyNetworkPage extends StatefulWidget {
  @override
  _MyNetworkPageState createState() => _MyNetworkPageState();
}

class _MyNetworkPageState extends State<MyNetworkPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            10,
            (index) {
              return Container(
                child: Column(
                  children: [
                    _developerItem(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(200),
      child: Container(
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
                    child: Icon(
                      Icons.person,
                    ),
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
            Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ruler your frineds network",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("kliked");
                    },
                    child: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.grey.shade300,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Invitation",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("kliked");
                    },
                    child: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.grey.shade300,
            ),
          ],
        ),
      ),
    );
  }

  Widget _developerItem() {
    return Container(
      margin: EdgeInsets.all(5),

      // width: MediaQuery.of(context).size.width,
      // height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/background.png'),
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            width: 50,
            height: 50,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage('assets/avatar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Hayk Avetisyan',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            'React, React-Native Developer at  gHost se ',
            style: TextStyle(
              fontSize: 16,
            ),
            softWrap: true,
            maxLines: 8,
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.toll,
                ),
                Text('24 join contact'),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            ),
            child: GestureDetector(
              child: Text(
                "add condact",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
