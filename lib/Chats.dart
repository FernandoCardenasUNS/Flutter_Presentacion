import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new ChatsPage(),
    routes: <String, WidgetBuilder>{}));

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 180,
                width: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Colors.purple[800],
                      Colors.purple[700],
                      Colors.purple[600],
                      Colors.purple[500],
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 480,
                    width: 400,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsetsDirectional.only(start: 16),
                          child: Column(
                            children: <Widget>[],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(0, 1),
                child: Container(
                    height: 500,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.black, offset: Offset(0, 2))
                        ],
                        ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Jim Doe",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "seen 2 mins ago ",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Container(
                                      padding: EdgeInsetsDirectional.only(top:8),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Icon(
                                              Icons.send,
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'Remove',
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 75),
                                child: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('imagenes/chica3.png'),
                                  minRadius: 40,
                                  maxRadius: 40,
                                ),
                              ),
                            ],
                          ),
                          padding:
                              EdgeInsetsDirectional.only(top: 7, bottom: 10),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Jane Doe",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "online",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Icon(
                                            Icons.send,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Remove',
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 103),
                                child: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('imagenes/chica4.png'),
                                  minRadius: 40,
                                  maxRadius: 40,
                                ),
                              ),
                            ],
                          ),
                          padding:
                              EdgeInsetsDirectional.only(top: 7, bottom: 10),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "John Doe",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "seen 10 mins ago",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Icon(
                                            Icons.send,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Remove',
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 75),
                                child: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('imagenes/chico5.png'),
                                  minRadius: 40,
                                  maxRadius: 40,
                                ),
                              ),
                            ],
                          ),
                          padding:
                              EdgeInsetsDirectional.only(top: 7, bottom: 10),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Ek aur Doe",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "online",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Icon(
                                            Icons.send,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Remove',
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 94),
                                child: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('imagenes/chico4.png'),
                                  minRadius: 40,
                                  maxRadius: 40,
                                ),
                              ),
                            ],
                          ),
                          padding:
                              EdgeInsetsDirectional.only(top: 7, bottom: 10),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Ye b Doe",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "online",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Icon(
                                            Icons.send,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Remove',
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 97),
                                child: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('imagenes/chica6.png'),
                                  minRadius: 40,
                                  maxRadius: 40,
                                ),
                              ),
                            ],
                          ),
                          padding:
                              EdgeInsetsDirectional.only(top: 7, bottom: 10),
                        ),
                      ],
                    )),
              ),
              Align(
                alignment: Alignment(0.6, -0.7),
                child: Container(
                  height: 100,
                  width: 280,
                  child: Text(
                    "YOUR CHATS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
