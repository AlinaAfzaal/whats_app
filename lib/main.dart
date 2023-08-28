import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title:const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
            ),
            actions: const [
              Icon(Icons.search),
              SizedBox(width: 8),
              Icon(Icons.more_vert),
              SizedBox(width: 8),
            ],
          ),
          body:  TabBarView(
            children: [
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index)
                  {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("profile.jpeg"),
                      ),
                      title:Text("Alina Afzaal"),
                      subtitle: Text("ok done that cool"),
                      trailing: Text("2:56 AM"),
                    );
                  }),

              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index)
                  {
                    return
                      index==0?
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading:  Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage("profile.jpeg"),
                                ),
                                Positioned(top: 22, left: 22, child:  CircleAvatar(radius: 10, backgroundColor: Colors.green,  child: Icon(Icons.add, color: Colors.white,))),
                              ],
                            ),
                            title: Text("My Status"),
                            subtitle: Text("Tap to add new Status"),

                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.0),
                            child: Text("Recent Updates"),
                          )
                        ],
                      )
                          :ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("profile.jpeg"),
                        ),
                        title:Text("Alina Afzaal"),
                        subtitle: Text("Yesterday, 2:56 AM"),
                      );

                  }),

              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index)
                  {
                    return

                      index==0?
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading:  CircleAvatar(
                              child: Icon(Icons.link_outlined),
                            ),
                            title: Text("Create call link"),
                            subtitle: Text("Share a link for your WhatsApp call"),

                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.0),
                            child: Text("Recent"),
                          )
                        ],
                      )
                          :const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("profile.jpeg"),
                        ),
                        title:Text("Alina Afzaal"),
                        subtitle: Text("Yesterday at 2:56 AM"),
                        trailing: Icon(Icons.phone, color: Colors.teal,),

                      );

                  }),
            ],
          ),
        ));

  }
}
