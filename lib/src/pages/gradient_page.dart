import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class GradientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _createBackground(context),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _createTitle(),
                _createButtonsTable(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _createBottomNavigationBar(context),
    );
  }

  Widget _createBackground(BuildContext context){

    final background = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(54, 52, 104, 1.0),
            Color.fromRGBO(37, 38, 60, 1.0),
          ],
          begin: FractionalOffset( 0.0 , 0.4 ),
          end: FractionalOffset( 0.0 , 1.0 ),
        )
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.87,
        width: MediaQuery.of(context).size.width * 0.87,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(242, 136, 172, 1.0),
              Color.fromRGBO(239, 77, 193, 1.0),
            ],
            begin: FractionalOffset( 0.0 , 0.4 ),
            end: FractionalOffset( 0.0 , 1.0 ),
          )
        ),
      ),
    );


    return Container(
      child: Stack(

        children: <Widget>[
          background,
          Positioned(
            top: -100.0,
            child: pinkBox)
        ],
      ),
    );
  }

  Widget _createTitle(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),),
          ],
        ),
      ),
    );

  }

  Widget _createBottomNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(
            color: Color.fromRGBO(116, 117, 152, 1.0)
          ),
        ),

      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container(),
          ),
        ],

      ),
    );
  }

  Widget _createButtonsTable(){
    return Table(
      children: [
        TableRow(
          children: [
            _createButton( Colors.blue, Icons.border_all, 'General' ),
            _createButton( Colors.purple, Icons.train, 'Transport' ),
          ]
        ),
        TableRow(
          children: [
            _createButton( Colors.pinkAccent, Icons.shopping_basket, 'Shopping' ),
            _createButton( Colors.orange, Icons.receipt, 'Bills' ),
          ]
        ),
        TableRow(
          children: [
            _createButton( Colors.indigo, Icons.movie, 'Entertainment' ),
            _createButton( Colors.green, Icons.cloud, 'Grocery' ),
          ]
        ),
        TableRow(
          children: [
            _createButton( Colors.blue, Icons.border_all, 'General' ),
            _createButton( Colors.purple, Icons.train, 'Transport' ),
          ]
        ),
      ],
    );
  }

  Widget _createButton(Color color, IconData icon, String text){
    return Container(
      height: 200.0,
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 5.0,),
                CircleAvatar(
                  child: Icon( icon , color: Colors.white,),
                  backgroundColor: color,
                  radius: 30.0,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: 20.0,
                  ),
                ),

                SizedBox(height: 5.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
