import 'package:flutter/material.dart';

class QrCodePage extends StatefulWidget {
  @override
  _QrCodePageState createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  bool presedleft = true;
  bool presedright = false;
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
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "QR-code Linkedin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            presedleft = true;
                            presedright = false;
                          });
                        },
                        child: Text(
                          "Scaning",
                          style: TextStyle(
                            color: presedleft ? Colors.green : Colors.black,
                          ),
                        ),
                      ),
                      Divider(
                        color: presedleft ? Colors.green : Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            presedright = true;
                            presedleft = false;
                          });
                        },
                        child: Text(
                          "my codex",
                          style: TextStyle(
                            color: presedright ? Colors.green : Colors.black,
                          ),
                        ),
                      ),
                      Divider(
                        color: presedright ? Colors.green : Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         presedleft ? Container  (
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            height: 680,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 Text(
                    "Linkedin whant Allow access camer ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white)
                  ),
                  child: GestureDetector(
                    child: Text(
                      "Allow access",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.only(top:260),
                  child: GestureDetector(
                    child: Text(
                      "add code",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                ),
              ],
            ),
          ) : 
          Container(

            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            height: 680,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 Text(
                    "Linkedin whant Allow access camer ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white)
                  ),
                  child: GestureDetector(
                    child: Text(
                      "Allow access",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.only(top:260),
                  child: GestureDetector(
                    child: Text(
                      "add code",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
