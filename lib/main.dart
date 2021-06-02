import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  String get ninjaRank => defineRank(ninjaLevel);

  String defineRank(int level) {
    if (level >= 10 && level < 20) {
      return 'Chunin';
    } else if (level >= 20 && level < 30) {
      return 'Jonin';
    } else if (level >= 30 && level < 40) {
      return 'Anbu Elite';
    } else if (level >= 40 && level < 50) {
      return 'Sannin';
    } else if (level >= 50) {
      return 'Hokage';
    }
    return 'Genin';
  }
  //String ninjaRank = defineRank(ninjaLevel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 20, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/nezuko.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[200],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'NINJA NAME',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'LEVEL',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Sushi',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Text(
                    '$ninjaLevel',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                'RANK',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '$ninjaRank',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 25.0,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 30.0),
              Row(children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  'sushi@ninja.com',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                  ),
                )
              ]),
            ]),
      ),
    );
  }
}
