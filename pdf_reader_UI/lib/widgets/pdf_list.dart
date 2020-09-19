import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../data/choices.dart';

class PdfListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DUMMY_FILES.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              DUMMY_FILES[index].title + '.pdf',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(DUMMY_FILES[index].date),
                Text(DUMMY_FILES[index].size.toString() +
                    ' ' +
                    DUMMY_FILES[index].sizeInBytes),
                Text(DUMMY_FILES[index].pages.toString() + ' pages'),
              ],
            ),
            leading: Image.asset('assets/images/pdflist.png'),
            trailing: PopupMenuButton(
              icon: Icon(Icons.more_vert,color: Colors.black,),
              onSelected: choiceAction,
              itemBuilder: (context) {
                return PopupMenuChoices.choices
                    .map((choice) => PopupMenuItem(
                          child: Text(
                            choice
                          ),
                          value: choice,
                        ))
                    .toList();
              },
            ),
          );
        });
  }
}

void choiceAction(String choice){
  print(choice);
}