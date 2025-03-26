import 'package:flutter/material.dart';


class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Password Reset'),backgroundColor: Color.fromARGB(255, 68, 183, 255),foregroundColor: Color(0XFFFFFFFF),),  
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.white, width: 3),),
            labelText: 'Enter your email to reset password',
            labelStyle: TextStyle(color:Color(0xFFFFFFFF) ,fontStyle: FontStyle.italic,fontSize: 22,),prefixIcon: Icon(Icons.email),prefixIconColor: Color(0xFFFFFFFF)
          ),        
        ),
        const SizedBox(height: 20),
        ElevatedButton(
              onPressed:() {
              Navigator.push(context, 
              MaterialPageRoute(builder: 
              (context) => 
              PasswordResetPage()));
            },
           style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 82, 243),foregroundColor: Color(0xFFFFFFFF),
                textStyle: TextStyle(color: Color(0xFFFFFFFF),fontSize: 20)
              ),

            child: const Text('Submit')
          
        ),
        ]
    ),
    ),
    )
    );
    
  }
}