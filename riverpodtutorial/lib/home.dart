import 'package:flutter/material.dart';
import 'package:riverpodtutorial/ui/changenotifierwidget.dart';
import 'package:riverpodtutorial/ui/futureproviderwidget.dart';
import 'package:riverpodtutorial/ui/providerwidget.dart';
import 'package:riverpodtutorial/ui/statenotifierwidget.dart';
import 'package:riverpodtutorial/ui/stateproviderwidget.dart';
import 'package:riverpodtutorial/ui/streamproviderwidget.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
                 
            children: [
              const SizedBox(height: 32,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProviderWidget()));
                            
                        }, child: Text("Provider")),
                ),
              ),
                
                
              
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(
                    width: 250,
                    height:50,
                     child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>StateProviderWidget()));
                            
                        }, child: Text("State Provider")),
                   ),
                 ),
                  
                
              
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(
                    width:250,
                    height:50,
                     child: ElevatedButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>StreamProviderWidget()));   
                        }, child: Text("Stream Provider")),
                   ),
                 ),
                  
                
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    height:50,
                    child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FutureProviderWidget()));
                        }, child: Text("Future Provider")),
                  ),
                ),
                  
                
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SizedBox(
                  width: 250,
                  height:50,
                   child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeNotifierWidget()));
                        }, child: Text("Change Notifier Provider")),
                 ),
               ),
                  
               
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width:250,
                    height:50,
                    child: ElevatedButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>StateNotifierWidget()));   
                        }, child: Text("State Notifier Provider")),
                  ),
                ),
                
                
            
            ],
              ),
          ),
        ),
      )
    );
  }
}