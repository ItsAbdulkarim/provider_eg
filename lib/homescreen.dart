import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_eg/providerclass.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  print('thisnithhsi');


    return Scaffold(
      

      appBar: AppBar(
        title: Text('provider'),
        
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [



   Consumer<CounterProvider>(builder: (context, value, child) {
     return Center(child: Text(value.count.toString() ,style: TextStyle(
       fontSize: 30,
       fontWeight: FontWeight.bold

     ),));


   },),
          



          ElevatedButton(
            onPressed: () {
              //Allow access to the current state of a provider, useful for reading data or calling methods without triggering widget rebuilds.
              context.read<CounterProvider>().increament();
              print('increment: ${context.read<CounterProvider>().count}');


            },
            child: Text('Increment'),
          ),



          ElevatedButton(
            onPressed: () {
              //also used this instead of read above we used read
              //Allow access to the current state of a provider, useful for reading data or calling methods without triggering widget rebuilds.
              Provider.of<CounterProvider>(context,listen: false).decrement();
              print('decrement: ${context.read<CounterProvider>().count}');


            },
            child: Text('Increment'),
          ),




        ],
      ),
    );
  }
}
