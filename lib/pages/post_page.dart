import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.close,
                  ),
                ),
              ),
              Text("Share this page"),
            ],
          ),
          Divider(),
          Container(
            child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.person),
                    Column(
                      children: [
                        Text(
                          "person name",
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.all(1),
                                    child: Icon(Icons.wrong_location)),
                                Container(
                                    margin: EdgeInsets.all(1),
                                    child: Text("Open")),
                                Container(
                                    margin: EdgeInsets.all(1),
                                    child: Icon(Icons.arrow_circle_down_sharp)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Text("what you thing ?",
                style: TextStyle(
                  fontSize: 25,
                ),),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, ),
            ),
            child: Column(
             children: [
               Row(
                 children:[
                     Icon(
                       Icons.image,
                     ), 
                     Text("add image"),
                 ],
               ),
               Row(
                 children:[
                     Icon(
                       Icons.video_call_sharp
                     ), 
                     Text("rec video"),
                 ],
               ),
               Row(
                 children:[
                     Icon(
                       Icons.event_busy,
                     ), 
                     Text("event"),
                 ],
               ),
               Row(
                 children:[
                     Icon(
                       Icons.dock_rounded,
                     ), 
                     Text("add docks"),
                 ],
               ),
               Row(
                 children:[
                     Icon(
                       Icons.work,
                     ), 
                     Text("share to vacancy"),
                 ],
               ),
               Row(
                 children:[
                     Icon(
                       Icons.person_outline,
                     ), 
                     Text("faind specialist"),
                 ],
               ),
               Row(
                 children:[
                     Icon(
                       Icons.rate_review_rounded,
                     ), 
                     Text("question"),
                 ],
               ),
               Row(
                 children:[
                     Icon(
                       Icons.image_sharp,
                     ), 
                     Text("share history"),
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
