import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
    body: DemoContent()
  );
}

class DemoContent extends StatefulWidget {
  const DemoContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DemoContentState8();
}

//ListView
class _DemoContentState8 extends State<DemoContent>{
  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => ListView(
    children: [
      _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
      _tile('The Castro Theater', '429 Castro St', Icons.theaters),
      _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
      _tile('Roxie Theater', '3117 16th St', Icons.theaters),
      _tile('United Artists Stonestown Twin', '501 Buckingham Way',
          Icons.theaters),
      _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
      const Divider(),
      _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
      _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
      _tile(
          'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
      _tile('La Ciccia', '291 30th St', Icons.restaurant),
    ],
  );
}


//GridView
class _DemoContentState7 extends State<DemoContent> {
  Widget _buildGrid() =>
      GridView.extent(maxCrossAxisExtent: 150,
          padding: const EdgeInsets.all(50),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: _buildGridTileList(30));

  Widget _buildGridCount() => GridView.count(crossAxisCount: 3,
    padding: const EdgeInsets.all(16),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(30));

  List<Container> _buildGridTileList(int count) =>
      List.generate(count, (i) =>
          Container(
            child: Image.asset("images/img_xz.jpg",
            fit: BoxFit.cover),
          ));

  @override
  Widget build(BuildContext context) => _buildGridCount();
}

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
);
const descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);

final ratings = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      const Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);

final iconList = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green[500]),
            const Text('PREP:'),
            const Text('25 min'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer, color: Colors.green[500]),
            const Text('COOK:'),
            const Text('1 hr'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.restaurant, color: Colors.green[500]),
            const Text('FEEDS:'),
            const Text('4-6'),
          ],
        ),
      ],
    ),
  ),
);

final leftColumn = Container(
  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(
    children: [
      const Text("titleText"),
      const Text("subTitle"),
      ratings,
      iconList,
    ],
  ),
);

class _DemoContentState6 extends State<DemoContent> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
        height: 600,
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 440,
                child: leftColumn,
              ),
              Image.network(
                  "https://cdn.pixabay.com/photo/2016/06/20/23/50/mixed-berries-1470227__340.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}

class _DemoContentState5 extends State<DemoContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.lightGreen),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Icon(
            Icons.star,
            color: Colors.yellow[500],
          ),
          Icon(
            Icons.star,
            color: Colors.yellow[500],
          ),
          Icon(
            Icons.star,
            color: Colors.yellow[500],
          )
        ])
    );
    /* children: [
           Image.asset(
            'images/img_xz.jpg',
            fit: BoxFit.cover,
          ),
           Image.asset(
            'images/img_xz.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/img_xz.jpg',
            fit: BoxFit.cover,
          )
        ]);*/
  }
}

class _DemoContentState extends State<DemoContent> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("hello world"),
      Image.asset(
        'images/img_xz.jpg',
        fit: BoxFit.cover,
      ),
      Icon(
        Icons.start,
        color: Colors.red[500],
      )
    ]);
  }
}

class _DemoContentState2 extends State<DemoContent> {
  @override
  Widget build(BuildContext context) =>
      Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Center(
          child: Text("hello world",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.black87,
                  decoration: TextDecoration.none,
                  fontSize: 32,
                  fontWeight: FontWeight.w500)),
        ),
      );
}

class _DemoContentState3 extends State<DemoContent> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Image.asset(
        'images/img_xz.jpg',
        fit: BoxFit.cover,
      ),
      Image.asset(
        'images/img_xz.jpg',
        fit: BoxFit.cover,
      ),
      Image.asset(
        'images/img_xz.jpg',
        fit: BoxFit.cover,
      ),
    ]);
  }
}

class _DemoContentState4 extends State<DemoContent> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Expanded(
          child: Image.asset(
            'images/img_start.png',
          )),
      Expanded(
          child: Image.asset(
            'images/img_start.png',
          )),
      Expanded(
          child: Image.asset(
            'images/img_start.png',
          ))
    ]);
    /* children: [
           Image.asset(
            'images/img_xz.jpg',
            fit: BoxFit.cover,
          ),
           Image.asset(
            'images/img_xz.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/img_xz.jpg',
            fit: BoxFit.cover,
          )
        ]);*/
  }
}
