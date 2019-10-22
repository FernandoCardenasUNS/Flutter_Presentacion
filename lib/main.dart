import 'package:flutter/material.dart';
import './navegacion.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new SplashScreen(),
        routes: <String, WidgetBuilder>{
          "/Navigation": (BuildContext context) => new ThirdPage(),
        }));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 1, bottom: 50),
                child: Image.asset("imagenes/imah.png"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 200,
                    padding: EdgeInsets.only(right: 6),
                    alignment: Alignment(1.5, 0.9),
                    child: Text(
                      "SOULmet",
                      style: TextStyle(fontSize: 42, fontFamily: "igino marini"),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 180,
                    padding: EdgeInsets.only(right: 6),
                    alignment: Alignment(0.5, -1),
                    child: Text("find your soul mate with us!", style: TextStyle(fontSize: 10, fontFamily: "cyreal"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    child: Text("INICIAR"),
                    color: Colors.white70,
                    onPressed: () {
                      Navigator.of(context).pushNamed("/Navigation");
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 150),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
