// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_final_fields, unused_field, unused_local_variable

//stf
import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool isChecked = true;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      //MaterialState.pressed,
      //MaterialState.hovered,
      //MaterialState.focused,
    };
    return Colors.white;
  }

  TextEditingController _textEditingController =
      TextEditingController(text: 's6552410005@sau.ac.th');

  String labelText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.yellow,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 360, left: 70),
            child: Text(
              'Remember Me',
              style: TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: MediaQuery.of(context).size.height * 0.0175,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 347, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                Checkbox(
                  checkColor: Colors.black,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 360, left: 240),
            child: InkWell(
              onTap: () => print('Forgot Password'),
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: MediaQuery.of(context).size.height * 0.0175,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80, left: 25),
            child: Text(
              'Hello! Welcome back!👋',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 115, left: 25),
            child: Text(
              'Hello again, You\'ve been missed!',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontSize: MediaQuery.of(context).size.height * 0.016,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 180, left: 35),
            child: Text(
              'Email Address',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontSize: MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 270, left: 35),
            child: Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontSize: MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 190, left: 35, right: 35),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TextField(
                  controller: _textEditingController,
                  obscureText: false,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    isDense: true,
                    hintText: 'Enter your email',
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextField(
                  obscureText: _obscureText,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: _toggle,
                      child: Icon(
                        Icons.remove_red_eye_rounded,
                        size: 30,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    isDense: true,
                    hintText: 'Enter your password',
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginUI()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 1,
                      MediaQuery.of(context).size.height * 0.03,
                    ),
                    backgroundColor: Color.fromARGB(248, 43, 97, 69),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      // side: BorderSide(
                      //   color: Colors.green,
                      // ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(children: <Widget>[
                  Expanded(child: Divider()),
                  Text(
                    "\t\t\t\t\tOr Login with\t\t\t\t\t",
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(child: Divider()),
                ]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginUI()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/facebooklogo.png',
                            height: MediaQuery.of(context).size.height * 0.028,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                              fontFamily: 'Kanit',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.38,
                          MediaQuery.of(context).size.height * 0.05,
                        ),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginUI()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/googlelogo.png',
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                              fontFamily: 'Kanit',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.38,
                          MediaQuery.of(context).size.height * 0.05,
                        ),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an Account?',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SingupUI()),
                        // );
                      },
                      child: Text(
                        ' Signup',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(248, 65, 146, 104)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
