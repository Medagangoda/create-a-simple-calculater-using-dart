import 'package:flutter/material.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  final TextEditingController value01 = TextEditingController();
  final TextEditingController value02 = TextEditingController();
  final TextEditingController value03 = TextEditingController();
  final TextEditingController value04 = TextEditingController();
  final TextEditingController value05 = TextEditingController();

  double total = 0;
  double average = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 178, 204, 226),
            ),

            

            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                const Center(
                  child: Text("Average Marker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                ),

                const SizedBox(height: 40,),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "Subject Mark 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: value01,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter marks',
                          ),
                        ),
                      ),
                    ],
                  ),

                ),

              const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "Subject Mark 2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: value02,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter marks',
                          ),
                        ),
                      ),
                      
                    ],
                  ),

                ),

                const SizedBox(height: 20,),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "Subject Mark 3",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: value03,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter marks',
                          ),
                        ),
                      ),
                      
                    ],
                  ),

                ),

                const SizedBox(height: 20,),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "Subject Mark 4",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: value04,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter marks',
                          ),
                        ),
                      ),
                      
                    ],
                  ),

                ),

                const SizedBox(height: 20,),



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "Subject Mark 5",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: value05,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter marks',
                          ),
                        ),
                      ),
                      
                    ],
                  ),

                ),

                const SizedBox(height: 35,),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: [
                       Expanded(
                        flex: 1,
                        child:MaterialButton(
                          onPressed: ()
                            {
                              double num01 = double.parse(value01.text);
                              double num02 = double.parse(value02.text);
                              double num03 = double.parse(value03.text);
                              double num04 = double.parse(value04.text);
                              double num05 = double.parse(value05.text);

                              setState(() {
                                total = num01+num02+num03+num04+num05;
                              });
                            },
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: const Text('TOTAL',style: TextStyle(color: Color.fromARGB(255, 0, 75, 136),fontWeight: FontWeight.bold),),
                      ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        flex: 2,
                        child: Text('$total',style: const TextStyle(color: Color.fromARGB(255, 177, 16, 4),fontWeight: FontWeight.bold,fontSize: 25),),
                      ),
                      
                    ],
                  ),

                ),
                
                const SizedBox(height: 35,),  

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: [
                       Expanded(
                        flex: 1,
                        child:MaterialButton(onPressed: ()
                      {
                        setState(() {
                          average = total/5;
                        });
                      },
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: const Text('AVERAGE',style: TextStyle(color: Color.fromARGB(255, 0, 75, 136),fontWeight: FontWeight.bold),),
                      ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        flex: 2,
                        child: Text('$average',style: const TextStyle(color: Color.fromARGB(255, 177, 16, 4),fontWeight: FontWeight.bold,fontSize: 25),),
                      ),
                      
                    ],
                  ),

                ),    
              ],
            ),
            
          ),
        )
      ),
    );
  }
}