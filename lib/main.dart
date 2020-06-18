import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SpinCircleClass());
  }
}

class SpinCircleClass extends StatefulWidget {
  @override
  _SpinCircleClassState createState() => _SpinCircleClassState();
}

class _SpinCircleClassState extends State<SpinCircleClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SpinCircleBottomBarHolder(
      bottomNavigationBar: SCBottomBarDetails(
          circleColors: [Colors.white, Colors.blue, Colors.blueGrey],
          iconTheme: IconThemeData(color: Colors.black45),
          activeIconTheme: IconThemeData(color: Colors.blue),
          backgroundColor: Colors.white,
          titleStyle: TextStyle(color: Colors.black45, fontSize: 12),
          activeTitleStyle: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          actionButtonDetails: SCActionButtonDetails(
              color: Colors.blue[800],
              icon: Icon(
                Icons.expand_less,
                color: Colors.white,
              ),
              elevation: 2),
          elevation: 2.0,
          items: [
            // Suggested count : 4
            SCBottomBarItem(
                icon: Icons.verified_user, title: "User", onPressed: () {}),
            SCBottomBarItem(
                icon: Icons.supervised_user_circle,
                title: "Details",
                onPressed: () {}),
            SCBottomBarItem(
                icon: Icons.notifications,
                title: "Notifications",
                onPressed: () {}),
            SCBottomBarItem(
                icon: Icons.details, title: "New Data", onPressed: () {}),
          ],
          circleItems: [
            //Suggested Count: 3
            SCItem(icon: Icon(Icons.add), onPressed: () {}),
            SCItem(icon: Icon(Icons.print), onPressed: () {}),
            SCItem(icon: Icon(Icons.map), onPressed: () {}),
          ],
          bnbHeight: 80 // Suggested Height 80
          ),
      child: SafeArea(
              child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:Border.all(color: Colors.blue[800])
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("@Sobhan912",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 20,
              ),
              Text("SpinCircle BottomBar Project",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w600))
            ],
          ),
        ),
      ),
    ));
  }
}
