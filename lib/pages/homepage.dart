import 'package:flutter/material.dart';
import 'package:flutter101/pages/forum.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void toForum() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Forum()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.white70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                margin: EdgeInsets.only(bottom: 15, top: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  'Hi Ady, mari berdiskusi!',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              )),
          Container(
            height: 110,
            margin: EdgeInsets.only(bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '> Forum sesuai minat Anda',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
                Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: GestureDetector(
                    onTap: toForum,
                    child: Card(
                      color: Colors.blue[50],
                      shadowColor: Colors.blue[100],
                      child: Row(
                        children: <Widget>[
                          Container(margin: EdgeInsets.fromLTRB(10, 10, 30, 10) ,child: Icon(Icons.access_alarms),),
                          Text('Forum UI/UX')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column( children:
          [Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '> Semua forum yang tersedia',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
                Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: GestureDetector(
                    onTap: toForum,
                    child: Card(
                      child: Row(
                        children: <Widget>[
                          Container(margin: EdgeInsets.fromLTRB(10, 10, 30, 10) ,child: Icon(Icons.access_alarms),),
                          Text('Forum Web Development')
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: GestureDetector(
                    onTap: toForum,
                    child: Card(
                      child: Row(
                        children: <Widget>[
                          Container(margin: EdgeInsets.fromLTRB(10, 10, 30, 10) ,child: Icon(Icons.access_alarms),),
                          Text('Forum Networking')
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: GestureDetector(
                    onTap: toForum,
                    child: Card(
                      child: Row(
                        children: <Widget>[
                          Container(margin: EdgeInsets.fromLTRB(10, 10, 30, 10) ,child: Icon(Icons.access_alarms),),
                          Text('Forum Data Science')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ]),
        ],
      ),
    );
  }
}
