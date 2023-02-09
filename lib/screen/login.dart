import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBEAEE2),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35, top: 130),
            child: Text(
              'Hello\nlogin',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFFF7DBF0), fontSize: 66),
            ),
          ),
          SingleChildScrollView(
              child: Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.5,
                right: 35,
                left: 35),
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xffF9F9F9),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Color(0xffF9F9F9),
                    hintText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                        color: Color(0xff4c505b),
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff4c505b),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, 'home');
                      },
                      icon: Icon(Icons.arrow_circle_right_rounded),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: Text(
                        'sign up',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b)),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b)),
                      ))
                ],
              )
            ]),
          ))
        ],
      ),
    );
  }
}
