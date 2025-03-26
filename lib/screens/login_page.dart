import 'package:flutter/material.dart';
import 'registration_page.dart';
import 'password_reset_page.dart';
import 'loggedin_page.dart';


class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(

          appBar: AppBar(title:Text('Login page'),titleTextStyle: TextStyle(fontSize: 24),
          backgroundColor: Colors.blueAccent,foregroundColor: Color(0XFFFFFFFF),),  
          
        backgroundColor: Color(0xFFEDE7F6),
        
        
        
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blueAccent,
                Colors.pinkAccent,
              ],
            )
          ),
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
           const Icon(Icons.account_circle_rounded,size: 100,color: Color.fromARGB(255, 255, 186, 136),
            ),
            const SizedBox(height: 20),
           
           
        const TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.white, width: 3),
            ),
            labelText: 'Enter your mail id',
            labelStyle: TextStyle(color: Color(0xFFFFFFFF),fontSize:20,fontStyle: FontStyle.italic),prefixIcon: Icon(Icons.email),prefixIconColor:Color(0xFFFFFFFF)),
            
            ), 
        const SizedBox(height: 20),    
        const TextField(
          obscureText:true,
        decoration: InputDecoration(enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.white, width: 3),),
            labelText: 'Enter Password',
            labelStyle: TextStyle(color: Colors.white,fontSize:20,fontStyle: FontStyle.italic),prefixIcon: Icon(Icons.lock),prefixIconColor: Color(0xFFFFFFFF)),
            
            ), 
          const SizedBox(height: 20),
             
        
          ElevatedButton(
          
              onPressed:() {
              Navigator.push(context, 
              MaterialPageRoute(builder: 
              (context) => 
              LoggedinPage()));
            },
           style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 82, 243), foregroundColor: Color(0xFFFFFFFF),
              textStyle: TextStyle(color: Color(0xFFFFFFFF),fontSize:20 ) ),

            child: const Text('Login')
          
        ),
        TextButton(
        onPressed:(){
          Navigator.push(context, 
              MaterialPageRoute(builder: 
              (context) => 
              PasswordResetPage()));
              
        ('Forgot Password pressed');
              },
         style: ElevatedButton.styleFrom(foregroundColor: Color(0xFFFFFFFF),
          textStyle:TextStyle(color:Color(0xFFFFFFFF),fontSize:20 ) ), 
         
              child: const Text('Forgot Password?'),
             
              
              
            ),
          TextButton(
              onPressed: () {
                Navigator.push(context, 
              MaterialPageRoute(builder: 
              (context) => 
              RegistrationPage()));
              ('Create Account pressed');
              },
            style: ElevatedButton.styleFrom(foregroundColor: Color(0xFFFFFFFF),
              textStyle:TextStyle(color:Color(0xFFFFFFFF),fontSize: 20 )),
              child: const Text('If you are a new user ? Create Account'),
              
            ),
        
          ]
        ),
        

        ),
    );   
          

           
        
    
      
  }

}
