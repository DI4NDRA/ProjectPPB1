import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnivPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sistem Informasi',
              style: TextStyle(fontSize: 55,color: Colors.black),),
            Text('Universitas Mulia',
              style: TextStyle(fontSize: 55,color: Colors.black),),
            Padding(padding: EdgeInsets.all(35),),
            ElevatedButton(onPressed: (){}, child: Text('Tentang Kampus',style: TextStyle(color: Colors.red,fontSize: 20),),
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.yellow),fixedSize: WidgetStatePropertyAll(Size(450,50)),)),
            Padding(padding: EdgeInsets.all(15),),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => HalFakultas(),));
            }, child: Text('Fakultas',style: TextStyle(color: Colors.red,fontSize: 20),),
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.yellow),fixedSize: WidgetStatePropertyAll(Size(450,50)),))
          ],
        ),
      )
    );
  }
}

class HalFakultas extends StatefulWidget {
  const HalFakultas({super.key});
  State<HalFakultas> createState() => _HalFakultasState();
}

class _HalFakultasState extends State<HalFakultas> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('Halaman Fakultas'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Fakultas Ilmu Komputer'),
            ),
          ),
          Card(
          child: ListTile(
          title: Text('Fakultas Ekonomi Dan Bisnis'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Fakultas humaniora dan kesehatan'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Fakultas Teknik'),
            ),
          ),
        ],
      ),
    );
  }
}