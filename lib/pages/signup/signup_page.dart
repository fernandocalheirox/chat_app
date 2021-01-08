import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isVisible;
   @override
  void initState() {
    super.initState();
    isVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backgrounds/bg-singup.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .40,
                ),
                 Padding(
                  padding: EdgeInsets.only(
                    right: 40,
                    left: 40,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.person,
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
                SizedBox(height: MediaQuery.of(context).size.height * .05),

                GestureDetector(
                   onTap: (){
                    
                   },
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