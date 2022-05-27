import 'package:flutter/material.dart';
void main(){
  runApp(cardapp());
}
class cardapp extends StatelessWidget {
  const cardapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,

        body: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.amberAccent,
                backgroundImage: AssetImage('images/wasif.png'),
              ),
              Text(
                'WASIF MUSHTAQ',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,

                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FA19-BCS-106',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,

                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    '+923301591115',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.teal.shade900,

                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'wasifmushtaq61@gmail.com',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.teal.shade900,

                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.add_location_alt_sharp,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'COMSATS UNIVERSITY VEHARI',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.teal.shade900,

                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.alternate_email,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'IG || wasif_alvi61',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.teal.shade900,

                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
