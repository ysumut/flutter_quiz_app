import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Flutter App'), backgroundColor: Colors.red, centerTitle: true,),

        body: Container(
          child: Column(children: [
            Text('Question'),
            ElevatedButton(onPressed: clickAnswer, child: Text('Answer-1'),),
            ElevatedButton(onPressed: clickAnswer, child: Text('Answer-2'),),
            ElevatedButton(onPressed: clickAnswer, child: Text('Answer-2'),),
          ],),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ev'),
            BottomNavigationBarItem(icon: Icon(Icons.airplanemode_active), label: 'Uçak'),
            BottomNavigationBarItem(icon: Icon(Icons.api), label: 'Api'),
          ],
        ),
      ),
    );
  }

  void clickAnswer() {
    print('Basıldı');
  }
}