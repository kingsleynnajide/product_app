import 'package:flutter/material.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("assets/images/bracelet 1.jpg",
                 height: 240
                ,),
              ),
              const SizedBox(height: 48,),
              
             const Text(
                "Just Do It",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  
                ),
              ),
        
              const SizedBox(height: 24,),
        
              const Text(
                "Positive Energy and Goodluck charm bracelets",
        
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48,),

              
                
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding:const EdgeInsets.all(25),
                  child: const Text("Shop Now",
                  style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  
                  ),),
                ),
              
              
              
              
              
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}