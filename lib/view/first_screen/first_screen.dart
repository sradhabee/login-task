import 'package:class_test/view/second_screen/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController=  TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
              
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text
                  ("Sign Up for Free",style:
                  
                   TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
                ),
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
                 ),
                  ),
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
                  obscureText: true,
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
                TextFormField(
                  obscureText: true,
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey.shade400,),
                    
                    
                    label: Text("Your Confirm Password"),
                 labelStyle: TextStyle(color: Colors.black,),
                 enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400,width: 2,),
                  borderRadius: BorderRadius.circular(15),
                  
                  
                  
                 ),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,width: 2,),
                  borderRadius: BorderRadius.circular(30),
                  
                 ),
                 
                 ),
                 validator: (value){
                  if(value==null||value.isEmpty){
                    return "Please confirm your password";
                  }else if(value!=_passwordController.text){
                    return "Passwords do not match";
                  }
                  return null;
                 },
                
                ),
                SizedBox(height: 25,),
                SizedBox(
                  height:50,
                  width: double.infinity,
                  child: ElevatedButton(
                    
                    
                    
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
                      }
                    },
                    
                    
                     child: Text("Sign Up",style: TextStyle(color: Colors.white,),),
                     
                  
                     style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade600)),
                     
                     
                      
                     
                     ),
                ),
                SizedBox(height: 100,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.black,fontSize: 15,),),
               TextButton(onPressed: (){}, child: Text("Sign In",style: TextStyle(color: Colors.blue.shade400),))
               
                ],
               )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}