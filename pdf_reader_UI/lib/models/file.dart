import 'package:flutter/foundation.dart';

class PdfFile {
  final String title;
  final String date;
  final double size;
  final String sizeInBytes;
  final int pages;

  const PdfFile({
    @required this.date,
    @required this.title,
    @required this.size,
    @required this.sizeInBytes,
    @required this.pages,
  });
}
