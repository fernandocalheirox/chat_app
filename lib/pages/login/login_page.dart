import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible;
  bool remember;
  String password;
  @override
  void initState() {
    super.initState();
    isVisible = false;
    remember = false;
  }
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/bg-login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: _height * .45),
              GestureDetector(
                onTap: (){},
                child: Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.only(
                    right: 43,
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.grey[600],

                    ),
                  ),
                ),
              ),
              
              // Email TextFormField
              Padding(
                padding: EdgeInsets.only(
                  right: 40,
                  left: 40,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email ID",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.email,
                      color: Color(0xFF323B60), //   0xFF1039E5
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                  style: TextStyle(fontSize: 20),
                ),
              ),

              SizedBox(height: _height * .03),

              // Password TextForm Field
              Padding(
                padding: EdgeInsets.only(
                  right: 40,
                  left: 40,
                ),
                child: TextFormField(
                  // autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: !isVisible,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Icon(
                         (isVisible) ?  Icons.visibility : Icons.visibility_off,
                        color: Color(0xFF323B60), //   0xFF1039E5
                        ),
                      ),
                    ),
                    prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.vpn_key,
                      color: Color(0xFF323B60), //   0xFF1039E5
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
              ),

              SizedBox(height: _height * .02),
              Padding(
                padding: EdgeInsets.only(
                  left: 17,
                ),
                child: CheckboxListTile(
                  activeColor: Color(0xFF323B60),
                  title: Text(
                    "Remember me",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  value: remember,
                  onChanged: (newValue) {
                  setState(() {
                    remember = newValue;
                  });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
              ),
               SizedBox(height: _height * .02),

               GestureDetector(
                 onTap: (){},
                 child: Container(
                   margin: EdgeInsets.only(
                      left: 100,
                      right: 100,
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF323B60),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
              ),
               ),
              
            ],
          ),
        ),
      ),
    );
  }
}