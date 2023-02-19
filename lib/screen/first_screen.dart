



import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/Provider/counter_provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 178, 238),
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300,),
            Text('you have pushed the button this many times:${context.watch<Counter>().count}'),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed:(){} ,
              child:Text("Next screen"),
              style:ElevatedButton.styleFrom(primary: Colors.blue) ,
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> context.read<Counter>().increment(),
        child: Icon(Icons.add),
        ),
    );
  }
}