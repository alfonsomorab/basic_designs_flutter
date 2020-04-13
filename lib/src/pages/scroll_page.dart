import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pageOne(),
          _pageTwo(),
        ],
      ),
    );
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[
        _createBackground(),
        _createImage(),
        _createTexts(),
      ],
    );
  }

  Widget _createBackground(){
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(85, 194, 221, 1.0),
    );
  }

  Widget _createImage(){
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/original.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTexts(){
    final textStyle = TextStyle(
      fontSize: 50.0,
      color: Colors.white,
      fontWeight: FontWeight.bold);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: textStyle,),
          Text('Miércoles', style: textStyle,),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 150.0, color: Colors.white,)
        ],
      ),
    );
  }










  Widget _pageTwo() {
    return Stack(
      children: <Widget>[
        _createBackground(),
        _createButton(),
      ],
    );
  }

  Widget _createButton(){
    return Center(
      child: Container(
        height: 50.0,
        width: 200.0,
        child: RaisedButton(

          onPressed: (){},
          child: Text('Bienvenido',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0
            ),
          ),
          color: Colors.blue,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),

        ),
      ),
    );
  }

}
