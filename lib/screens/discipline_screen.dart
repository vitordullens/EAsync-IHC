import 'package:easync_ihc/utilities/constants.dart';
import 'package:flutter/material.dart';

class DisciplineScreen extends StatefulWidget {
  DisciplineScreen({this.discipline});
  final Map<String, dynamic> discipline;
  @override
  _DisciplineScreenState createState() => _DisciplineScreenState();
}

class _DisciplineScreenState extends State<DisciplineScreen> {
  Widget _buildDisciplines() {
    return Container(
        height: 220.0,
        decoration: kBoxDecorationStyle,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Capítulos",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {},
                  elevation: 10.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[Text("Capítulo 1")],
                  ),
                ),
                SizedBox(width: 10.0),
                RaisedButton(
                  onPressed: null,
                  elevation: 10.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[Text("Capítulo 2")],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: null,
                  elevation: 10.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[Text("Capítulo 3")],
                  ),
                ),
                SizedBox(width: 10.0),
                RaisedButton(
                  onPressed: null,
                  elevation: 10.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[Text("Capítulo 4")],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: null,
                  elevation: 10.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[Text("Capítulo 5")],
                  ),
                ),
                SizedBox(width: 10.0),
                RaisedButton(
                  onPressed: null,
                  elevation: 10.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[Text("Capítulo 6")],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Geografia"),
        backgroundColor: Color(0xFF6CA8F1),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, widget.discipline);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 20.0,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/proxy/cHRbQERuzEFS9eAmr2dN4jBgplKIp4uAzJagRcxre7N_VRFIkl-DR_ZQHmjhHE6g9JcDLGNOlzeZgapSZkTKJbr8Zhvqt_yJNeN4HJZyWmi2hhqJI_noSu1X6FgjQew-eXl3V1gBBfWMkQhmKxnxg5_Y')),
              SizedBox(height: 50.0),
              _buildDisciplines(),
            ],
          ),
        ),
      ),
    );
  }
}