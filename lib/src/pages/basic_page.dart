import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final textTitleStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  final textSubTitleStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey
  );

  final textButtonStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color: Colors.blue
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _addTitleRow(),
            _addButtonsRow(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Widget _createImage(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.unsplash.com/photo-1465056836041-7f43ac27dcb5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _addTitleRow(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Where does it come from?', style: textTitleStyle,),
                  SizedBox(height: 7.0,),
                  Text('Contrary to popular belief', style: textSubTitleStyle,)
                ],
              ),
            ),
            Icon( Icons.star, color: Colors.red, size: 20.0,),
            Text('42', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _addButtonsRow(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _createButton(Icons.call, 'CALL'),
          _createButton(Icons.near_me, 'ROUTE'),
          _createButton(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _createButton(IconData icon, String text){
    return Column(
      children: <Widget>[
        Icon( icon , size: 40.0, color: Colors.blue,),
        SizedBox(height: 10.0,),
        Text(text, style: textButtonStyle,)
      ],
    );
  }

  Widget _createText(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',

          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
