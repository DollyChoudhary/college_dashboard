import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:collegedashboard_app/new_event_form.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: Image.network(
                    "https://mars-metcdn-com.global.ssl.fastly.net/content/uploads/sites/101/2019/04/30162428/Top-Header-Background.png"
                ).image,
              )
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  height: 62,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 62,
                        backgroundImage: NetworkImage("https://miro.medium.com/max/11344/1*32h8ts3A-7XNr6A4Js87ng.jpeg"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'ADMIN NAME',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 3),
                            
                          ),
                          Text('Admin',style: TextStyle(color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network("https://cdn3.vectorstock.com/i/thumb-large/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg",height: 120,),
                            Text('All Admin Members '),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                                );
                              },

                            ),




                          ],


                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class SecondRoute extends StatelessWidget {
  const SecondRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(



      ),
    );
  }
}