import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../screens/recent_screen.dart';
import '../screens/bookmark_screen.dart';
import '../widgets/pdf_list.dart';
import '../widgets/pdf_grid.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  bool _isPressedIcon = false;
  IconData _iconData = Icons.view_module;
  int _selectedPageIndex = 0;

  List<Map<String, Object>> screens;

  @override
  void initState() {
    // TODO: implement initState
    screens = [
      {
        'page': 'Empty',
        'title': 'PDF Reader',
      },
      {
        'page': RecentScreen(),
        'title': 'Recent',
      },
      {
        'page': BookmarkScreen(),
        'title': 'Bookmark',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screens[_selectedPageIndex]['title']),
        actions: [
          IconButton(
            icon: Icon(
              _iconData,
            ),
            onPressed: () {
              setState(() {
                _isPressedIcon = !_isPressedIcon;
                _iconData =
                    _isPressedIcon ? Icons.view_list : Icons.view_module;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: _selectedPageIndex == 0 ? _isPressedIcon ? PdfGridView():PdfListView():screens[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_shared),
              title: Text('File'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              title: Text('Recent'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text('Bookmark'),
            )
          ]),
    );
  }
}
