import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Negara ASEAN', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  Widget _buildListWidget(String gambar, String negara, String ibukota) {
    return Container(
      color: Colors.transparent,
      height: 120,
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: (Image.network(
              gambar,
              width: 130,
              fit: BoxFit.cover,
            )),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Column(
              children: [
                Text(negara,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text(ibukota, style: TextStyle(color: Colors.white70))
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned: true,
              title: Text(
                'Asean Countries',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              backgroundColor: Colors.black,
            ),
            SliverFixedExtentList(
              itemExtent: 100,
              delegate: SliverChildListDelegate([
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/id-flag.gif",
                    "Indonesia",
                    "Jakarta"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/rp-flag.gif",
                    "Philippines",
                    "Manila"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/my-flag.gif",
                    "Malaysia",
                    "Kuala Lumpur"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/sn-flag.gif",
                    "Singapore",
                    "Singapore"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/th-flag.gif",
                    "Thailand",
                    "Bangkok"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/bx-flag.gif",
                    "Brunei Darussalam",
                    "Bandar Sri Begawan"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/tt-flag.gif",
                    "Timor-Leste",
                    "Dili"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/cb-flag.gif",
                    "Cambodia",
                    "Phnom Penh"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/vm-flag.gif",
                    "Vietnam",
                    "Hanoi"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/la-flag.gif",
                    "Laos",
                    "Vientiane"),
                _buildListWidget(
                    "https://www.worldometers.info/img/flags/bm-flag.gif",
                    "Myanmar",
                    "Yangon")
              ]),
            )
          ],
        ));
  }
}
