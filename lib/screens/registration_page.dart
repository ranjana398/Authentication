import 'package:flutter/material.dart';
import 'loggedin_page.dart';


class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(title: Text('Registration page'),backgroundColor: Color.fromARGB(255, 68, 183, 255),foregroundColor: Color(0XFFFFFFFF),),  
        backgroundColor: Color(0xFFEDE7F6),
     
    body: Center(
      child:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blueAccent,
                Colors.pink,
              ],
            )
          ),
      padding: EdgeInsets.all(16),
      child:Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        const TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.white, width: 3),),
            labelText: 'User name',
            labelStyle: TextStyle(color:Color(0xFFFFFFFF),fontStyle:  FontStyle.italic,fontSize: 22,),prefixIcon: Icon(Icons.login),prefixIconColor: Color(0xFFFFFFFF)
          ),        
        ),
        
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
           enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.white, width: 3),),
            labelText: 'PhoneNumber',
            labelStyle: TextStyle(color: Color(0xFFFFFFFF),fontStyle: FontStyle.italic,fontSize: 22),prefixIcon: Icon(Icons.phone),prefixIconColor: Color(0xFFFFFFFF)
          ),
        ),
        const SizedBox(height: 20), 
        const TextField(
          obscureText: true,
          decoration:InputDecoration(
            enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.white, width: 3),),
            labelText: 'password',
            labelStyle: TextStyle(color: Color(0xFFFFFFFF),fontStyle: FontStyle.italic,fontSize: 22),prefixIcon: Icon(Icons.lock),prefixIconColor: Color(0xFFFFFFFF)
          ),
        ),
        const SizedBox(height: 20), 
        const TextField(
          obscureText: true,
          decoration:InputDecoration(
            enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.white, width: 3),),
            labelText: 'confirm password',
            labelStyle: TextStyle(color: Color(0xFFFFFFFF),fontStyle: FontStyle.italic,fontSize: 22),prefixIcon: Icon(Icons.lock),prefixIconColor: Color(0xFFFFFFFF)
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  LoggedinPage()),
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 82, 243),foregroundColor: Color(0xFFFFFFFF),
                textStyle: TextStyle(color: Color(0xFFFFFFFF),fontSize: 20)
              ),
              child:  Text('Register'),
            ),
          ],
        ),
      ),
    ),
    );
  }
}