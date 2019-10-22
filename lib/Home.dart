import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomePage(),
    routes: <String, WidgetBuilder>{

    }));


class HomePage extends StatefulWidget {
  @override
  //_HomePageState createState() => _HomePageState();
  State<HomePage> createState(){
    return StateHomePage();
  }
}

class StateHomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            // Fondo morado
            Container(
              alignment: Alignment.center,
              height: 227,
              width: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              decoration: BoxDecoration(color: Colors.deepPurpleAccent[700]
              ),
            ),
            //-----------------------------------------------
            //Foto
            Align(
              alignment: Alignment(0, -0.5),
              child: Container(
                  height: 350,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, offset: Offset(0, 4))
                    ],
                  ),child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        height: 350,
                        width: 280,
                        child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:Image.asset('imagenes/chica4.png'),

                          ) ,
                      ),
                    ],
                ),
              ),
            ),
            // -------------------------------------------------
            // Descripcion
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Align(
                    child:
                    Container(
                      height: 180,
                      width: 320,
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                        boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(4, 4))
                        ],),
                      child: Column(

                        children: <Widget>[
                          Align(
                            alignment: Alignment(-0.95, 0),
                            child:
                            Text("JANE DOE",style: TextStyle(fontSize: 18),),
                          ),
                          Align(
                            alignment: Alignment(-0.95, 0),
                            child:
                            Text("25",style: TextStyle(fontSize: 10),),
                          ),
                          Align(
                            alignment: Alignment(-0.6, 0),
                            child:
                            Text("This is some description about the person,",style: TextStyle(fontSize: 15),),
                          ),
                          Align(
                            alignment: Alignment(-0.6, 0),
                            child:
                            Text("what he/she expects from the partner and",style: TextStyle(fontSize: 15),),
                          ),
                          Align(
                            alignment: Alignment(-0.6, 0),
                            child:
                            Text("also what they want to achieve int the life.",style: TextStyle(fontSize: 15),),
                          ),
                          Align(
                            alignment: Alignment(-0.95,0),
                            child:
                            Text("10 minutes ago", style: TextStyle(fontSize:12,fontStyle: FontStyle.italic),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child:
                    Container(
                      width: 320,
                      child:
                      Row(
                        children: <Widget>[
                        Container(
                          child:
                          Container(
                            width: 160,
                            height: 50,
                            child:
                            RaisedButton(
                              color: Colors.red,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.favorite),
                                      Text("Connect")
                                    ],
                                  )
                              ),onPressed: () {
                              Navigator.of(context).pushNamed("/_SplashScreen");
                            },
                            ),
                          )
                        ),
                        Container(
                          width: 160,
                          height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child:
                          RaisedButton(
                            color: Colors.green,
                            child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.message),
                                    Text("Message")
                                  ],
                                )
                            ),onPressed: () {
                            Navigator.of(context).pushNamed("/_SplashScreen");
                          },
                          ),
                        )
                      ],
                    ),
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*
class StateHomePage extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,

                height: 180,
                width: 360,
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
                    height: 430,
                    width: 330,
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
            ],
          ),
        ),
      ),
    );
  }
}
*/