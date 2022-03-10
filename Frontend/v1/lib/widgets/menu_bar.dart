import 'package:flutter/material.dart';
import '../constants/images.dart';

// class VerticalAppBar extends StatelessWidget {
//   const VerticalAppBar({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text("Add Icon"),

//       ],
//       backgroundColor: Colors.purple,
//     );
//   }
// }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite, color: Colors.green),
                  label: Text('Dashboard')),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.book, color: Colors.green),
                label: Text('Data'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star, color: Colors.green),
                label: Text('Features'),
              ),
            ],
          ),
          // const VerticalDivider(thickness: 2, width: 1),
          // This is the main content.
          // Expanded(
          //   child: Center(
          //     child: Text('selectedIndex: $_selectedIndex'),
          //   ),
          // )
        ],
      ),
    );
  }
}
