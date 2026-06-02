import 'package:flutter/material.dart';
import 'package:sib6b_dndraa/sisum/page/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      debugShowCheckedModeBanner: false,
      home: UnivPage(),
    );
  }
}

class Project2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold();
  }
}

class Project1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Youtube Music",style: TextStyle(fontSize: 40),),
        centerTitle: true,
        leading: Icon(Icons.account_circle, color: Colors.red, size: 50,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.play_circle_outline_rounded, size: 40,color: Colors.red,),),
          Padding(padding: EdgeInsets.all(10)),
          IconButton(onPressed: (){}, icon: Icon(Icons.mic_outlined, size: 40,color: Colors.red,))
        ],
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: Colors.red,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}

class Beranda extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Project1(),));
            }, child: Text('Project 1'),
              style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Colors.lightBlueAccent),
                  foregroundColor: WidgetStatePropertyAll(Colors.black),
                  fixedSize: WidgetStatePropertyAll(Size(150,50))),),
            Padding(padding: EdgeInsetsGeometry.all(25)),
            ElevatedButton(onPressed: (){}, child: Text('Project 2'), 
              style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Colors.lightBlueAccent),
                  foregroundColor: WidgetStatePropertyAll(Colors.black),
                  fixedSize: WidgetStatePropertyAll(Size(150,50))) ,),
            Padding(padding: EdgeInsetsGeometry.all(25)),
            ElevatedButton(onPressed: (){}, child: Text('Project 3'), 
              style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Colors.lightBlueAccent),
                  foregroundColor: WidgetStatePropertyAll(Colors.black),
                  fixedSize: WidgetStatePropertyAll(Size(150,50))) ,),
          ],
        ),
      ),
    );
  }
}
