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
          body: SingleChildScrollView(
              child: Column(
            children: [
              //
              // Meldung Pop-up
              //

              Container(
                decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.fromLTRB(11, 10, 11, 18),
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

              //
              // Datumsanzeige
              //

              Center(
                child: Text(
                  "Donnerstag, 12. Dezember",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),

              //
              // Links für diverse Seiten
              //

              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(Icons.accessible_forward_sharp)),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(Icons.accessible_forward_sharp)),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(Icons.accessible_forward_sharp)),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(Icons.accessible_forward_sharp))
                  ],
                ),
              ),

              //
              // Mensa Informationen
              //

              Container(
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  padding: EdgeInsets.all(8),
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                            child: Row(
                              spacing: 10,
                              children: [
                                Icon(Icons.coffee),
                                Text(
                                  "Mensa",
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                          ),
                          Icon(Icons.more_vert),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                              child: Column(
                                spacing: 13,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Wann? 4. DS"),
                                  Text("Wo? Alte Mensa"),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Zum Angebot",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue[900]),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                width: 130,
                                height: 130,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset("assets/eat.jpg",
                                        fit: BoxFit.cover,
                                    )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),

              //
              // Calender Container
              //

              Container(
                margin: EdgeInsets.fromLTRB(11, 10, 11, 5),
                padding: EdgeInsets.fromLTRB(8, 8, 8, 18),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Wrap(
                  spacing: 10,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 10,
                            children: [
                              Icon(Icons.calendar_today),
                              Text("Heute",
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                            ],
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Center(
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20)),
                                      color: Colors.blueAccent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.ac_unit_outlined),
                                      Text("7:30")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20)),
                                      color: Colors.blueAccent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.ac_unit_outlined),
                                      Text("7:30")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20)),
                                      color: Colors.blueAccent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.ac_unit_outlined),
                                      Text("7:30")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20)),
                                      color: Colors.blueAccent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.ac_unit_outlined),
                                      Text("7:30")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20)),
                                      color: Colors.blueAccent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.ac_unit_outlined),
                                      Text("7:30")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20)),
                                      color: Colors.blueAccent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.ac_unit_outlined),
                                      Text("7:30")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
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
