import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_one/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 200,
                  decoration: const BoxDecoration(color: Colors.blueAccent),
                ),
                   Container(
                     padding: const EdgeInsets.only(top: 20),
                     child: Column(
                       children: [
                         Padding(padding: const EdgeInsets.only(left: 20,right: 16),
                         child:
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: const [
                             Text(
                               "Wallet", textAlign: TextAlign.center,
                               style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),
                             ),
                             Icon(
                               Icons.add,
                               color: Colors.white,
                               size: 30,
                             )
                           ],
                         ),),
                         const SizedBox(height: 10.0),//wallet
                         Card(
                           child: Container(
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                             height: 150,
                             width: 350,
                             padding: const EdgeInsetsDirectional.all(7.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Expanded(child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Container(
                                       padding: const EdgeInsets.only(bottom: 8.0),
                                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)
                                       ),
                                       child: const Text(
                                         "Balance",textDirection: TextDirection.ltr
                                         ,style: TextStyle(fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold,),
                                         textAlign: TextAlign.left,
                                       ),

                                     ),
                                     const Padding(padding: EdgeInsetsDirectional.all(5.0)),
                                     const Text(
                                       "10.423 BTC",textDirection: TextDirection.ltr,textAlign: TextAlign.start,
                                       style: TextStyle(fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.bold,),
                                     ),
                                     const Text(
                                       "63.505 USD",textAlign: TextAlign.end,
                                       style: TextStyle(fontSize: 15.0, color: Colors.grey, fontWeight: FontWeight.bold,),
                                     ),
                                   ],
                                 ))
                               ],
                             ),
                           ),
                         ),
                         const SizedBox(height: 25,),//Balance
                         Container(
                           decoration: BoxDecoration(color: Colors.white12,
                             borderRadius: BorderRadius.circular(20.0),
                           ),
                           height: 150,
                           width: 350,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                 padding:(const EdgeInsets.only(top: 55.0)),
                                 decoration: BoxDecoration(color: Colors.white,
                                 borderRadius: BorderRadius.circular(20.0),
                                   boxShadow: const [
                                     BoxShadow(
                                         color: Colors.blueGrey,
                                         blurRadius: 20,
                                         offset: Offset(2.0, 5.0))
                                   ],
                               ),
                                 height: 150,
                                 width: 160,
                                 child: Column(
                                 children: [
                                   Image.asset("image/send.png",fit: BoxFit.contain,width: 30,color: Colors.redAccent,),
                                   const Text("Send"),
                                 ], ),
                               ),

                               Container(
                                 padding:(const EdgeInsets.only(top: 55.0)),
                                 decoration: BoxDecoration(color: Colors.white,
                                 borderRadius: BorderRadius.circular(20.0),
                                   boxShadow: const [
                                     BoxShadow(
                                         color: Colors.blueGrey,
                                         blurRadius: 20,
                                         offset: Offset(2.0, 5.0))
                                   ],
                               ),
                                 height: 150,
                                 width: 160,
                                 child: Column(
                                   children: [
                                     Image.asset("image/received.png",fit: BoxFit.contain,width: 30,color: Colors.blueAccent,),
                                     Text("Receive"),
                                   ], ),
                               )
                             ],
                           ),
                         ),
                         //Send
                         // Container(
                         //   child: const TabBar(
                         //     tabs: [
                         //       Tab(text: "Tokens"),
                         //       Tab(text: "Collectibles"),
                         //       Tab(text: "History"),
                         //     ],
                         //   )
                         // ),
                         // Container(
                         //   child: const TabBarView(
                         //     children: [
                         //       Text("Hi"),
                         //       Tab(text: "Tokens"),
                         //       Tab(text: "Tokens"),
                         //     ],
                         //
                         //   ),
                         // )
                         const SizedBox(height:30,),

                         const DefaultTabController(length: 3, child:
                         TabBar(
                           indicator: BoxDecoration(
                               color: Colors.white),
                           unselectedLabelColor: Colors.grey,
                           indicatorColor: Colors.blue,
                           tabs: <Tab> [
                             Tab(
                               child: Text("Tokens",style: TextStyle(color: Colors.blue),),
                             ),
                             Tab(
                               child: Text("Collectibles",style: TextStyle(color: Colors.blue),),
                             ),
                             Tab(
                               child: Text("History",style: TextStyle(color: Colors.blue),),
                             ),
                           ],
                         ),
                         ),
                         SizedBox(
                           height: 300,
                             child: DefaultTabController(length: 3, child:
                             TabBarView(
                               children: [
                                 ListView.builder(
                                     itemCount: 3,
                                     itemBuilder: (BuildContext context, int index) {
                                       return ListTile(
                                         leading:
                                         Image.asset("image/ether.jpg",fit: BoxFit.contain,width: 30,),

                                         title: Text(
                                           "ETHB $index",
                                           style: const TextStyle(color: Colors.black),
                                         ),
                                         subtitle: Text(
                                           "Ether$index",
                                           style: const TextStyle(color: Colors.black),
                                         ),
                                         trailing: const Text(
                                           "1.25",
                                           style: TextStyle(color: Colors.black),
                                         ),
                                       );
                                     }),
                                 ListView.builder(
                                     itemCount: 3,
                                     itemBuilder: (BuildContext context, int index) {
                                       return ListTile(
                                         leading:
                                         Image.asset("image/BAT.png",fit: BoxFit.contain,width: 40,),
                                         title: Text(
                                           "ETH $index",
                                           style: const TextStyle(color: Colors.black),
                                         ),
                                         subtitle: Text(
                                           "Ether$index",
                                           style: const TextStyle(color: Colors.black),
                                         ),
                                         trailing: const Text(
                                           "1.25",
                                           style: TextStyle(color: Colors.black),
                                         ),
                                       );
                                     }),
                                 ListView.builder(
                                     itemCount: 3,
                                     itemBuilder: (BuildContext context, int index) {
                                       return ListTile(
                                         leading:
                                         Image.asset("image/Maker.png",fit: BoxFit.contain,width: 40,),
                                         title: Text(
                                           "ETH $index",
                                           style: const TextStyle(color: Colors.black),
                                         ),
                                         subtitle: Text(
                                           "Ether$index",
                                           style: const TextStyle(color: Colors.black),
                                         ),
                                         trailing: const Text(
                                           "1.25",
                                           style: TextStyle(color: Colors.black),
                                         ),
                                       );
                                     }),
                               ],
                             ),
                             ),
                         )
                       ],
                     ),
                   ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}