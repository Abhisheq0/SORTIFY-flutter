import 'package:flutter/material.dart';
import 'package:sortify/main.dart';
import 'package:sortify/screens/graphScreens/top_artists_byregion_list.dart';
import 'package:sortify/screens/graphScreens/top_artists_set.dart';
import 'package:sortify/screens/graphScreens/top_songs_global_list.dart';

var ex=[100, 200, 300];
class TopGlobalSongsScreen extends StatefulWidget {
  const TopGlobalSongsScreen({Key? key}) : super(key: key);

  @override
  State<TopGlobalSongsScreen> createState() => _TopGlobalSongsScreenState();
}

class _TopGlobalSongsScreenState extends State<TopGlobalSongsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Top Songs(Global)', style: TextStyle(color: kprimarygreen),),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 6000,
                child: ListView.builder(
                  itemCount: topartiststreams.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text((index+1).toString()+") "+topglobalsongnames[index]),

                      trailing:  Text(topglobalsongstreams[index] + " min"),






                    );
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
