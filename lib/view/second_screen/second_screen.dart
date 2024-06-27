import 'package:class_test/view/third_screen/third_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String storedEmail = "_sradhakapoor567@gmail.com";
    String storedPassword ="sradhabee";
    final _formKey=GlobalKey<FormState>();
    final TextEditingController _emailController=TextEditingController();
    final TextEditingController _passwordController=TextEditingController();


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                    
                    children: [
                      Text
                      ("Sign in to Your Account",style:
                      
                       TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
                       SizedBox(height: 30,),
                      TextFormField(
                        controller: _emailController,
                       
                        decoration: InputDecoration(label: Text("Your Email Address"),
                       labelStyle: TextStyle(color: Colors.black,),
                       enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400,width: 2,),
                        borderRadius: BorderRadius.circular(15),
                        
                       ),
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,width: 2,),
                        borderRadius: BorderRadius.circular(30),
                       ) ),
                      validator: (value) {
                   if(value==null||value.isEmpty){
                    return "Enter a valid Email";
                   }else if(value.contains("@")){
                    return null;
                   }else{
                    return "Invalid Email Address";
                   }
                 },
                      ),
                      SizedBox(height: 25,),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey.shade400,),
                          
                          
                          label: Text("Your Password"),
                       labelStyle: TextStyle(color: Colors.black,),
                       enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400,width: 2,),
                        borderRadius: BorderRadius.circular(15),
                        
                        
                        
                       ),
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,width: 2,),
                        borderRadius: BorderRadius.circular(30),
                       )
                       ),
                      validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter your password";
                  }else if(value.length<8){
                    return "Password must contain atleast 8 characters";
                  }
                  return null;
                 },
                 
                       
                      ),

                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.verified_user_outlined,color: Colors.grey.shade400,),
                          Text("Remember Me",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight:FontWeight.w800),),
                          SizedBox(width: 50,),
                          Text("Forgot Password",style: TextStyle(color: Colors.blue.shade500,fontSize: 15,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      SizedBox(height: 35,),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){
                          if(_formKey.currentState!.validate()){
                            if(_emailController.text==storedEmail&&_passwordController.text==storedPassword){
                            Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder:(context) => ThirdScreen(),), (route) => false);}
                          }
                          
                        }, child: Text("Sign in",style: TextStyle(color: Colors.white,),),
                        style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade600)),),
                      )
                    ],
                ),
          ),
        ),
      ),
    );
  }
}