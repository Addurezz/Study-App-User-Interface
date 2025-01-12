import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Text("Study-App",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold)),
                  Icon(Icons.person)
                ],
              )),
          body: Column(
            children: [
              // red rectangle+
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.fromLTRB(11,18,11,18),
                child: Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(spacing: 10, children: [
                            Icon(
                              CupertinoIcons.exclamationmark_circle_fill,
                              color: Colors.white,
                            ),
                            Text("Meldung",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                          ]),
                          Icon(
                            Icons.close,
                            color: Colors.white,
                          )
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                "Die Einschreibung für mündliche Prüfungen hat begonnen und endet am",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "21.01.2025",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                    ])),
              ),

              Center(
                child: Text("Donnerstag, 12. Dezember", style: TextStyle(
                    color: Colors.white, fontSize: 25, fontWeight: FontWeight
                        .w700),),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  
                ),
               
              ),
              
              Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
              child: Wrap(
                  spacing: 10,

                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("Heute",
                              style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500)),
                      ],
                    ),
                                         
                     Center(
                       child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                       children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                          height: 150,
                          width: 150,

                        ),Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 150,
                          width: 150,
                        ),Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 150,
                          width: 150,
                        ),Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 150,
                          width: 150,
                        ),Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 150,
                          width: 150,
                        ),Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 150,
                          width: 150,
                        ),
                       ],
                       ),
                     ),

                  ],

              ),
              ),
            ],

          ),
          bottomNavigationBar:
              BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dash",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: "Musik",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded),
              label: "Stundenplan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "TODO",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Pflanzen",
            ),
            

          ],
          unselectedItemColor: Colors.blue[900],
          selectedItemColor: Colors.blue[900],
          showUnselectedLabels: true,
          ),

        ));
  }
}
