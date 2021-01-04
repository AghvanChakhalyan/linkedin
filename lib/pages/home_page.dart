import 'package:flutter/material.dart';
import 'package:linkedin/pages/job_page.dart';
import 'package:linkedin/pages/message_page.dart';
import 'package:linkedin/pages/my_page.dart';
import 'package:linkedin/pages/qr_code_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String txt = "Subscribe";
  List<Map<String, dynamic>> companyData = [
    {
      "image": "assets/avatar.png",
      "company_name": "History",
      "seen": true,
    },
    {
      "image": "assets/dobooki.png",
      "company_name": "DoBooki...",
      "seen": false,
    }
  ];

  List<Map<String, dynamic>> companyNamesData = [
    {
      "company_image": "assets/aua.png",
      "company_name": "American University of Ar..",
      "company_subscribe": "10 441 subscribes",
      "subscribe": true,
    },
    {
      "company_image": "assets/invision.png",
      "company_name": "InVision",
      "company_subscribe": "137 178 subscribes",
      "subscribe": true,
    },
    {
      "company_image": "assets/bm.png",
      "company_name": "Bill Marriot 3-rd heght",
      "company_subscribe":
          "Executive Chairman of the Board  at Marriot Internation",
      "subscribe": true,
    },
  ];

  List<Map<String, dynamic>> personsNameData = [
    {
      "person_image": "assets/bm.png",
      "person_name": "Varduhi Sargsyan",
      "person_info": "Java Sovftware Developer-Energize Global Services CJSC",
      "person_data": "4 day.",
    },
    {
      "person_image": "assets/bm.png",
      "person_name": "NASA - National Aeronautics and Space Administration",
      "person_info": "5 127 403 subscribes",
      "person_data": "1 w.",
    },
    {
      "person_image": "assets/bm.png",
      "person_name": "Zaruhi Sargsyan",
      "person_info": "Java Sovftware Developer-Energize Global Services CJSC",
      "person_data": "4 day.",
    },
    {
      "person_image": "assets/bm.png",
      "person_name": "Zaruhi Sargsyan",
      "person_info": "Java Sovftware Developer-Energize Global Services CJSC",
      "person_data": "4 day.",
    },
    {
      "person_image": "assets/bm.png",
      "person_name": "Zaruhi Sargsyan",
      "person_info": "Java Sovftware Developer-Energize Global Services CJSC",
      "person_data": "1 day.",
    },
    {
      "person_image": "assets/bm.png",
      "person_name": "Zaruhi Sargsyan",
      "person_info": "Java Sovftware Developer-Energize Global Services CJSC",
      "person_data": "5 w.",
    },
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
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: 
                          (context){
                           return MyPage();
                          }
                          ),
                      ); 
                    },
                    child: Image(
                      image: AssetImage("assets/avatar.png")
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
            Container(margin: EdgeInsets.only(top: 25), child: _companyData()),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.grey.shade300,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add your list",
                  ),
                  GestureDetector(
                    onTap: () {
                      print("kliked");
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            _coompanyNames(),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return JobsPage();
                  }));
                },
                child: Text("see all"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.grey.shade300,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rafo Gasparyan kliked like this",
                  ),
                  GestureDetector(
                    onTap: () {
                      print("kliked");
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down,
                    ),
                  ),
                ],
              ),
            ),
            _personNames(),
          ],
        ),
      ),
    );
  }

  Widget _personNames() {
    return Column(
      children: personsNameData
          .map<Widget>((personName) => _personItem(personName))
          .toList(),
    );
  }

  Widget _personItem(Map<String, dynamic> personName) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      personName['person_image'],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        personName['person_name'],
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        personName['person_info'],
                        style: TextStyle(
                          fontSize: 10,
                        ),
                        softWrap: true,
                        maxLines: 12,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              personName['person_data'],
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              softWrap: true,
                              maxLines: 12,
                            ),
                           Image(
                             width: 10,
                             height: 10,
                             image: AssetImage("assets/world.png"),
                           ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _companyData() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: companyData.length,
          itemBuilder: (context, index) {
            return _companyName(companyData[index], index: index);
          }),
    );
  }

  Widget _companyName(Map<String, dynamic> companyInfo, {int index}) {
    return Container(
      width: 90,
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(companyInfo['image']),
                ),
                border: Border.all(
                  width: 3,
                  color:
                      companyInfo["seen"] ? Colors.white : Colors.blue.shade500,
                )),
          ),
          Text(
            companyInfo['company_name'],
            maxLines: 2,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _coompanyNames() {
    return Column(
      children: companyNamesData
          .map<Widget>((companyName) => _companyItem(companyName))
          .toList(),
    );
  }

  Widget _companyItem(Map<String, dynamic> companyName) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      companyName['company_image'],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        companyName['company_name'],
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        companyName['company_subscribe'],
                        style: TextStyle(
                          fontSize: 10,
                        ),
                        softWrap: true,
                        maxLines: 12,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(
                  right: 15,
                ),
                child: Row(children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        txt = "Unsubscribe";
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    "$txt",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
