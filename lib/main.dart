import 'package:flutter/material.dart';
import 'package:navbars/profile.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.indigo,
        brightness: Brightness.dark


      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
  with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_right),
        title: Text("Side menu"),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Hello, Jens", style: TextStyle(
                fontSize: 20
              ),),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/background.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            ListTile(
              leading: Text("Profile"),
              trailing: Icon(Icons.account_circle),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            ListTile(
              leading: Text("Sign out"),
              trailing: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

}
