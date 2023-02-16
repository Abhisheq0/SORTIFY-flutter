import 'package:flutter/material.dart';
import 'package:sortify/main.dart';
import 'package:sortify/screens/graphScreens/top_artists_set.dart';

var ex=[100, 200, 300];
class TopArtistsScreen extends StatefulWidget {
  const TopArtistsScreen({Key? key}) : super(key: key);

  @override
  State<TopArtistsScreen> createState() => _TopArtistsScreenState();
}

class _TopArtistsScreenState extends State<TopArtistsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Top Artists', style: TextStyle(color: kprimarygreen),),
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
                      title: Text((index+1).toString()+") "+topartistnames[index]),
                      subtitle:Text(topartistyear[index].toString()),
                      trailing:  Text(topartiststreams[index].toString() + " min"),






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
