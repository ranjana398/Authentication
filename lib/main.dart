import 'package:flutter/material.dart';

void main() {
  runApp(const MyPage());
}
class MyPage extends StatelessWidget {
  const MyPage({super.key});
   
  @override
Widget build(BuildContext context){
return MaterialApp(
   debugShowCheckedModeBanner: false,
  home : LoginPage());
}
}
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

class LoggedinPage extends StatelessWidget {
  const LoggedinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logged In'),
        backgroundColor: Color(0xFF448AFF), 
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blueAccent,
              Colors.pink,
            ],
          ),
        ),
        child: Center(
          child: Text(
            'You are successfully logged in!',
            style: TextStyle(
              color: Colors.green, 
              fontSize: 24, 
              fontWeight: FontWeight.bold, 
            ),
          ),
        ),
      ),
    );
  }
}
