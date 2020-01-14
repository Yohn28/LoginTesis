import 'package:flutter/material.dart';
import 'menu_dashboard.dart';


class LoginPage extends StatefulWidget{
  
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  
  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController, 
      curve: Curves.bounceOut
    );
    _iconAnimation.addListener(() => this.setState((){}));
    _iconAnimationController.forward();
  }


  @override
  Widget build(BuildContext context){
    return new Scaffold(
    
      //backgroundColor: Colors.purpleAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/umbreon1.jpg"),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
            
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,
              ),

              new Form( 
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                        color: Colors.teal, fontSize: 20.0
                      )
                    ),
                  ),

                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText : "Enter Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),
                        new MaterialButton(
                          height: 40.0,
                          minWidth: 100.0,
                          color: Colors.blue,
                          textColor: Colors.black,
                          child: new Text("Login"),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder:(context) => MenuDashboardPage()),
                              );
                            },
                          splashColor: Colors.purple,
                          
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }
  }