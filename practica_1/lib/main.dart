import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
      ),
      home: MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  var relojsito = true;
  final _controller = DefaultTabController(length: 3,);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer){
      setState(() {
        relojsito = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    if(relojsito) return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wa.jpg"),
            fit: BoxFit.cover
          )
        ),
      )
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(icon: (Icon(Icons.search ,color: Colors.white,)),),
            IconButton(icon: (Icon(Icons.add_call,color: Colors.white,)),),
            IconButton(icon: (Icon(Icons.more_vert,color: Colors.white,)),)
          ],
          title: Text(widget.title),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "LLAMADAS",
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "CONTACTOS",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://i.ytimg.com/vi/0EsKyNPQt4g/hqdefault.jpg"),
                      radius: 25,
                    ),
                    trailing: Icon(Icons.call),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.call_received, color: Colors.red, size: 15,),
                        Text(" 23 de Julio, 1:34",style: TextStyle(
                          color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://djanetop.com/upload/djanes/263-madds.jpg"),
                      radius: 25,
                    ),
                    trailing: Icon(Icons.call),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.call_received, color: Colors.red, size: 15,),
                        Text(" 23 de Julio, 1:34",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://www.metroweekly.com/wp-content/uploads/2019/03/Markus-Notch-Persson-1024x865.jpg"),
                      radius: 25,
                    ),
                    trailing: Icon(Icons.call),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.call_received, color: Colors.red, size: 15,),
                        Text(" 23 de Julio, 1:34",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BODU5Yzg2YTMtM2ExZS00OTljLTgzOTUtYzg3Zjk2MmJkZjFjXkEyXkFqcGdeQXVyNjEyMTg2OTk@._V1_.jpg"),
                      radius: 25,
                    ),
                    trailing: Icon(Icons.call),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.call_received, color: Colors.red, size: 15,),
                        Text(" 23 de Julio, 1:35",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://isdb.pw/upload2/319040229/1829792786048663336.jpg"),
                      radius: 25,
                    ),
                    trailing: Icon(Icons.call),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.call_received, color: Colors.red, size: 15,),
                        Text(" 23 de Julio, 1:36",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                ]
            ),
            ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://i.ytimg.com/vi/0EsKyNPQt4g/hqdefault.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("8:05",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.check, color: Colors.black38, size: 15,),
                        Text(" Hola profe, si ve esto, pongame 10",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://djanetop.com/upload/djanes/263-madds.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("8:05",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.check, color: Colors.black38, size: 15,),
                        Text(" Hola profe, si ve esto, pongame 10",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://www.metroweekly.com/wp-content/uploads/2019/03/Markus-Notch-Persson-1024x865.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("8:05",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.check, color: Colors.black38, size: 15,),
                        Text(" Hola profe, si ve esto, pongame 10",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BODU5Yzg2YTMtM2ExZS00OTljLTgzOTUtYzg3Zjk2MmJkZjFjXkEyXkFqcGdeQXVyNjEyMTg2OTk@._V1_.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("8:05",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.check, color: Colors.black38, size: 15,),
                        Text(" Hola profe, si ve esto, pongame 10",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://isdb.pw/upload2/319040229/1829792786048663336.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("8:05",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.check, color: Colors.black38, size: 15,),
                        Text(" Hola profe, si ve esto, pongame 10",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                ]
            ),
            ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://i.ytimg.com/vi/0EsKyNPQt4g/hqdefault.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("Móvil",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        Text(" Disponible",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://djanetop.com/upload/djanes/263-madds.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("Móvil",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        Text(" Disponible",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://www.metroweekly.com/wp-content/uploads/2019/03/Markus-Notch-Persson-1024x865.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("Móvil",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        Text(" Disponible",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BODU5Yzg2YTMtM2ExZS00OTljLTgzOTUtYzg3Zjk2MmJkZjFjXkEyXkFqcGdeQXVyNjEyMTg2OTk@._V1_.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("Móvil",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        Text(" Disponible",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://isdb.pw/upload2/319040229/1829792786048663336.jpg"),
                      radius: 25,
                    ),
                    trailing: Text("Móvil",style: TextStyle(color: (Colors.black38)),),
                    title: Text("Skeleeer"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        Text(" Disponible",style: TextStyle(
                            color: Colors.black38
                        ),)
                      ],
                    ),
                  ),
                  Divider(),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
