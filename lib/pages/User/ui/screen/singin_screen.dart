import 'package:flutter/material.dart';
import 'package:pokedex/pages/containers/list/list_page.dart';
import 'package:pokedex/pages/widgets/GrandientBack.dart';
import 'package:pokedex/pages/widgets/button_colored.dart';

class SignInScreen extends StatefulWidget{

  bool isLoged = false;

  @override
  State createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen>{

  @override
  Widget build(BuildContext context) {
    return _handleCurrentSession();
  }
  Widget _handleCurrentSession(){
    if(widget.isLoged) {
      return PokemonList();
    } else {
      return singIn();
    }

  }

  Widget singIn(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Enjoy seeing all the Pokemons",
                style: TextStyle(
                  fontSize: 34.0,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              ButtonColored(text: "Login",
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => PokemonList()));
                },
                width: 300.0,
                height: 50.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
