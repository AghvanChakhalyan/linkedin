import 'package:flutter/material.dart';
import 'package:linkedin/pages/message_page.dart';

class JobsPage extends StatefulWidget {
  @override
  _JobsPageState createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  List<Map<String, dynamic>> jobsData = [
    {
      "company_image": "assets/bm.png",
      "jobs_name": "React Developer (Remote)",
      "company_name": "Toptal",
      "jobs_location": "Erevan, Armenia. remote job",
      "jobs_data": "after 4 day.",
      "jobs_candidate": " ",
    },
     {
      "company_image": "assets/bm.png",
      "jobs_name": "React Developer (Remote)",
      "company_name": "Toptal",
      "jobs_location": "Erevan, Armenia. remote job",
      "jobs_data": "after 4 day",
      "jobs_candidate": "19 candidats",
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("see");
                  },
                  child: Icon(
                    Icons.more_vert,
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
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(width: 1, color: Colors.grey.shade400)),
                    margin: EdgeInsets.only(bottom: 30),
                    child: Image(
                      image: AssetImage("assets/avatar.png"),
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Column(
                    children: [
                      Text("Premium in monath"),
                      Text("See actual vacancy"),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow,
                        ),
                        child: GestureDetector(
                          child: Text("1 monath for free",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.grey.shade300,
            ),
            Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Recomendet for you",
                )),
            _jobs(),
          ],
        ),
      ),
    );
  }

  Widget _jobs() {
    return Column(
      children: jobsData.map<Widget>((jobData) => _jobsItem(jobData)).toList(),
    );
  }

  Widget _jobsItem(Map<String, dynamic> jobData) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                width: 55,
                height: 52,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              jobData['company_image'],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobData['jobs_name'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    jobData['company_name'],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.green,
                      ),
                      Text(
                        jobData['jobs_location'],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        jobData['jobs_data'],
                      ),
                      Text(
                        jobData['jobs_candidate'],
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(child: Icon(Icons.more_vert),)
            ],
          ),
          Divider(),
        ],
      ),
      
    );
  }
}
