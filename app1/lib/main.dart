import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actividad 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Avatar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          CircleAvatar(
            child: IconButton(
              icon: Icon(Icons.supervised_user_circle),
              onPressed: (){},
            ),
          ),
          SizedBox(width: 4,),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 6
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://boygeniusreport.files.wordpress.com/2019/06/the-matrix.jpg?quality=98&strip=all&w=782",
                ),
              ),
            ),
          ),
          SizedBox(width: 4,),
          CircleAvatar(
            child: IconButton(
              icon: Text("KR"),
              onPressed: (){},
            ),
          ),
          SizedBox(width: 4,),
        ],
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: "assets/cargando.gif",
          image: "https://gamespot1.cbsistatic.com/uploads/screen_kubrick/1562/15626911/3572227-matrix.jpg",
        )
      ),
    );
  }
}
