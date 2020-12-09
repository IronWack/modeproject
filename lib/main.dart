import 'package:flutter/material.dart';
import 'Enemy.dart';

Enemy pepe = Enemy.setFixed('pepe');

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    //All of our main routes
    routes: {
      '/': (context) => Home(),
      '/action': (context) => ActionMain(),
      '/shop': (context) => Shop(),
      '/about': (context) => About(),
      '/settings': (context) => Settings(),
    },
  ));
}

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/*  
 *  This is the startup/home screen where the player can either choose to start,
 *  looking a the about page, or settings page. I should add a quit option.
 */
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/action');
              },
              icon: Icon(Icons.directions_run),
              label: Text('Start')),
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              icon: Icon(Icons.info),
              label: Text('About')),
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              icon: Icon(Icons.settings),
              label: Text('Settings')),
        ],
      ),
    ));
  }
}

/*
 *  Main action page where we will have the player fighting different monsters
 */
class ActionMain extends StatefulWidget {
  @override
  _ActionMainState createState() => _ActionMainState();
}

class _ActionMainState extends State<ActionMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Bar'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/shop');
              },
              child: Icon(
                Icons.shopping_bag,
                size: 26.0,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                // child: Text(pepe.name),
                //This is place holder just to show you
                child: Text(
                  'Pepe',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                // child: EnemyHealth(),
                child: Text(
                  '100',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  child: Image(
                image: AssetImage('assets/widepeepoSad.png'),
              )),
            ],
          )),
          Container(
            child: ActionButtons(),
          ),
        ],
      ),
    );
  }
}

/*
 *  This is the shop page which will have the different upgrades, we may have to
 *  change this to a stateful widget later
 */
class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the shop'),
        centerTitle: true,
      ),
      body: Row(
        children: <Widget>[],
      ),
    );
  }
}

/*
 *  Standard about page, currently has lorem ipsum in it, can add something
 *  talking about this course later.
 */
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About us'),
        centerTitle: true,
      ),
      body: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed' +
          'do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad' +
          ' minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip' +
          ' ex ea commodo consequat. Duis aute irure dolor in reprehenderit in ' +
          'voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur ' +
          ' sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt ' +
          'mollit anim id est laborum.'),
    );
  }
}

/*
 *  Settings page which will be updated soon to have maybe dark mode? or
 *  maybe some other cool things???
 */
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Text('Does nothing right now haha...'),
    );
  }
}

///The enamy action in here would take from 1 to 3 just like player but it would
///be random, not sure how to go about that however.
class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextButton.icon(
            onPressed: () {
              //Gameplay(1, enamyAction, pepe, player)
            },
            style: null,
            icon: Icon(Icons.colorize_sharp),
            label: Text('Attack')),
        TextButton.icon(
          onPressed: () {
            //Gameplay(2, enamyAction)
          },
          style: null,
          icon: Icon(Icons.local_fire_department),
          label: Text('Magic'),
        ),
        TextButton.icon(
            onPressed: () {
              //Gameplay(3, enamyAction)
            },
            style: null,
            icon: Icon(Icons.shield),
            label: Text('Defend')),
      ],
    );
  }
}

class EnemyHealth extends StatefulWidget {
  @override
  _EnemyHealthState createState() => _EnemyHealthState();
}

class _EnemyHealthState extends State<EnemyHealth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(pepe.currentHealth.toString()),
    );
  }
}
