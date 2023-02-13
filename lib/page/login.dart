import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Login" ,style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
        body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const Text("login",style: TextStyle(fontSize: 33),),
         SvgPicture.asset("assets/icon/login.svg"),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 266,
              child: const TextField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email : ",
                hintStyle: TextStyle(fontSize: 19),
                prefixIcon: Icon(Icons.person),
              ))),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 27),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 266,
              child: const TextField(
                keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password :  ",
                    hintStyle: TextStyle(fontSize: 19),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                  ))),
          
          
          
          
          ElevatedButton(
            onPressed: () {},
            
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.purple),
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66))),
            ),
            child: const Text(
              "Log in",
              style: TextStyle(fontSize: 27),
            ),
          ),
        ],
      ),
    ));
  }
}
