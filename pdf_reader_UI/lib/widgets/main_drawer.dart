import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, String image_url) {

    Map<String, Object> icons = {
      'star': Icons.star_border,
      'share': Icons.share
    };
    List iconsname = ['star', 'share'];

    return Container(
      child: ListTile(
        leading: iconsname.contains(image_url)
            ? Icon(
                icons[image_url],
                size: 40,
              )
            : Image.asset(
                image_url,
                height: 40,
              ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        contentPadding: const EdgeInsets.all(8),
        onTap: () {},
      ),
    );
  }

  Widget buildHeader(String text) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 10,
        left: 12,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.red,
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaquery = MediaQuery.of(context);
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: mediaquery.size.height * 0.26,
              width: double.infinity,
              color: Colors.red,
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: Image.asset('assets/images/adobelogo.png'),
                title: Text(
                  'PDF Reader 2020',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'All document Viewer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            buildHeader('Doc Reader'),
            buildListTile('PDF Reader', 'assets/images/pdflogo.png'),
            buildListTile('File Manager', 'assets/images/filemanger.png'),
            buildListTile('Scanner PDF', 'assets/images/scanner.png'),
            buildListTile('Merger PDF', 'assets/images/merge.png'),
            buildHeader('Develop'),
            buildListTile('Rate us', 'star'),
            buildListTile('Share app', 'share'),
          ],
        ),
      ),
    );
  }
}
