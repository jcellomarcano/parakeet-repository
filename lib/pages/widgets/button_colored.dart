import 'package:flutter/material.dart';

class ButtonColored extends StatefulWidget{

  double width = 0.0;
  double height = 0.0;
  final String text;
  final VoidCallback onPressed;


  ButtonColored({Key key, @required this.text,@required this.onPressed,
                this.height, this.width});

  @override
  State createState() {
    return _ButtonColored();
  }
}

class _ButtonColored extends State<ButtonColored>{

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 30.0
        ),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD2)
            ],
                begin: FractionalOffset(0.2,0.0),
                end: FractionalOffset(1.0,0.6),
                stops: [0.0,0.6],
                tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}