import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 300,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                      child: Image.network(
                        'https://image.freepik.com/free-photo/penne-pasta-tomato-sauce-with-chicken-tomatoes-wooden-table_2829-19744.jpg',
                        fit: BoxFit.fill,
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'BREAKFAST',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '271 kcal',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Fruit Granola',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.schedule,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '10 mins',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'INGREDIANTS',
                    textAlign: TextAlign.start,

                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                    // style: Theme.of(context).textTheme.title,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(' 1 Cup of granola',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      Text(' 2 Cup of granola',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      Text(' 3 Cup of granola',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      Text(' 4 Cup of granola',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'PREPARATION',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                    // style: Theme.of(context).textTheme.title,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color Lorem ipsum color',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}