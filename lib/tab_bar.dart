import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return  DefaultTabController(initialIndex: 1,length: 3, child:
    Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white),
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue,

          tabs: const <Tab> [
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

      bottomNavigationBar:
      TabBarView(children: [ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const Icon(Icons.send),
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
                leading: const Icon(Icons.send),
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
                leading: const Icon(Icons.send),
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
            }),],),
    ),
    );
  }
}
