import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import './grid_item.dart';

class PdfGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      children: DUMMY_FILES.map((e) => GridItem(
        date: e.date,
        pages: e.pages,
        size: e.size,
        sizeInBytes: e.sizeInBytes,
        title: e.title,
      )).toList(),
    );
  }
}
