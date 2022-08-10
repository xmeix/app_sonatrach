// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class Demande_Screen extends StatelessWidget {
  const Demande_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text(
            'Demandes De Congé',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0.25,
            ),
          ),
        ),
        backgroundColor: Color(0xFFFFCB95),
        elevation: 5,
  //       actions: <Widget>[
  //             IconButton(
  //                       icon: Icon(
  //                      Icons.home,
  //                    color: Colors.black,
  //                    size: 22,
  //                                ),
  //              onPressed: () {
  //                   // do something
  //               },
  //   )
  // ],
      ),
      body: Container(

        padding: EdgeInsets.all(15),
       
        child: Center(
          child: Container(
            margin: EdgeInsets.all(5),
            child: Container(
              height: 380,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Card(
                  elevation: 5,
                  
                  child: Column(   
                               children: [             
                                Row(
                                
                                  children: [                   
                                     SizedBox(width: 20 , height: 60,),
                                     Text(
                                    'Id : 20148 ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.black,
                                      letterSpacing: 0.5,
                                      
                                    ),
                                    ),
                                   Text('       '),
                                     Text(
                                    'DEMANDE VALIDEE',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 20, 109, 66),
                                      letterSpacing: 0.5,
                                      
                                    ),
                                    ),
                                  ],
                                ),
                                                         
                                         Row(
                                         
                                           children: [
                                            SizedBox(width: 21,),
                                             Text(
                                              'Expéditeur : MOUSLI Amina ',
                                              style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black,
                                              letterSpacing: 0.5,
                                                                   ),
                                                                   ),
                                           ],
                                         ),                
                               
                                     Padding(
                                       padding: const EdgeInsets.all(20),
                                       child: Text(
                                  'Motif : Par la présente, je vous prie de bien vouloir m''accorder 10 jours de congé pour la période du 08/08/2022 au 18/08/2022.',
                                  style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        letterSpacing: 0.5,
                                  ),
                                  ),
                                     ),
                                   
                                  
                            
                                    Column(
                                     
                                      children: [ 
                                       
                                        Row(
                                        
                                          children: [
                                             SizedBox(width: 1,),
                                             
                                             IconButton(
                                                          icon: Icon(
                                                                      Icons.access_time,
                                                                      color: Colors.black,
                                                                       size: 15,
                                                              ),
                                                     onPressed: () {
                                                                        // do something
                                                                    },
                                              ),
                                        
                                            Text(
                                  'Date-Debut : 08/08/2022',
                                  style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                            letterSpacing: 0.5,
                                  ),
                                  ),
                                          ],
                                        ),
                                      Container(
                                        height: 11,
                                        child: Row(
                                                      children: [
                                                                  SizedBox(width: 1,),
                                                                   IconButton(
                                                                                  icon: Icon(
                                                                                             Icons.access_time,
                                                                                             color: Colors.black,
                                                                                              size: 15,
                                                                                             ),
                                                       onPressed: () {  // do something
                                                                      },
                                                                   ),
                                        
                                        Text(
                                        'Date-Fin : 17/08/2022 ',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black,
                                          letterSpacing: 0.5,
                                        ),
                                        ),
                                    ],
                                  ),
                                      ),
                                      ],
                                    ),
                                 
                                 
                               ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
     ) ;
  }
}