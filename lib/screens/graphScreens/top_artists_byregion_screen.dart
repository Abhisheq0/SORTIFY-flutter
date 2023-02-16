import 'package:flutter/material.dart';
import 'package:sortify/main.dart';
import 'package:sortify/screens/graphScreens/top_artists_byregion_list.dart';
import 'package:sortify/screens/graphScreens/top_artists_set.dart';

var ex=[100, 200, 300];
class TopArtistsbyRegionScreen extends StatefulWidget {
  const TopArtistsbyRegionScreen({Key? key}) : super(key: key);

  @override
  State<TopArtistsbyRegionScreen> createState() => _TopArtistsbyRegionScreenState();
}

class _TopArtistsbyRegionScreenState extends State<TopArtistsbyRegionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Top Artists(Australia)', style: TextStyle(color: kprimarygreen),),
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
                      title: Text((index+1).toString()+") "+topargentinaartistnames[index]),
                      subtitle:Text(topargentinaartistcountry[index]),
                      trailing:  Text(topargentinaartiststreams[index] + " min"),






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
