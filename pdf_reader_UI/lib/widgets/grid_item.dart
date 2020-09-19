import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String title;
  final String date;
  final int pages;
  final double size;
  final String sizeInBytes;

  GridItem({this.date, this.pages, this.size, this.sizeInBytes, this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(
              'assets/images/pdflist.png',
              height: 100,
            ),
            ListTile(
              title: Text(
                title + '.pdf',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(date),
                  Text(size.toString() + ' ' + sizeInBytes),
                ],
              ),
              //trailing: IconButton(icon: Icon(Icons.more_vert),color: Colors.black, onPressed: (){}),
            ),
          ],
        ),
      ),
    );
  }
}
