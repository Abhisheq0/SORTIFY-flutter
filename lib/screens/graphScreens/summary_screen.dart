import 'package:flutter/material.dart';
import 'package:sortify/main.dart';
import 'package:sortify/screens/graphScreens/summary_list.dart';
import 'package:sortify/screens/graphScreens/top_artists_set.dart';

var ex=[100, 200, 300];
class SummaryScreen extends StatefulWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Summary', style: TextStyle(color: kprimarygreen),),
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
                      title: Text((index+1).toString()+") "+globalsummarycountry[index]),
                      subtitle:Text(globalsummaryyear[index]),
                      trailing:  Text(globalsummarystreams[index] + " min"),






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
