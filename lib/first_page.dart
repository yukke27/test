import 'package:flutter/material.dart';
import 'package:tutorial1/second_page.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = <String>['【さんま定食】秋の味覚を堪能する', '【ナポリタン】おうちで簡単 喫茶店の味', 'C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1e1e1e),
        title: const Text(
          'yukke@プログラミング猛修行中',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            Icons.cast,
            color: Colors.white,
          ),
          SizedBox(width: 24),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 16),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        color: Color(0xff1e1e1e),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Image.network('https://pbs.twimg.com/media/F4247afbIAAE3gx?format=jpg&name=large'),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            '${entries[index]}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        Text(
                              '20万回視聴　5日前',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white60
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}