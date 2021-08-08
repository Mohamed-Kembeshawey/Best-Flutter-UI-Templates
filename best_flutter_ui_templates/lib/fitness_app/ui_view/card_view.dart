
import 'package:best_flutter_ui_templates/fitness_app/ui_view/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double  _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>   Details()));
      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        /* padding: EdgeInsets.all(8),*/
        /* margin: EdgeInsets.all(5),*/
        child: Container(
          width: _width/2-15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: _width/2-10,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network('https://image.freepik.com/free-photo/penne-pasta-tomato-sauce-with-chicken-tomatoes-wooden-table_2829-19744.jpg')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Dinner",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 14,
                      height: 1.2
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(8),
                child: Text(
                  "Fruit Granola",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "271 Kcal",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 14,
                      height: 1.2
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
