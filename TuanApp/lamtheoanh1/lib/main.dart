import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout theo anh",
      theme: ThemeData(
      primaryColor: Colors.red),
      home: buildHomePage("Tran Anh Tuan"),
    );
}
  Widget buildHomePage(String title) {
    const titleText = Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlova',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );

    const subtext = Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova.'
      ' Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle (
        fontFamily: 'Georgia',
        fontSize: 25,
      ),
    );

    const setStyle = TextStyle(
      color: Colors.black,
      letterSpacing: 0.5,
      fontSize: 19,
      height: 2,
      fontFamily: 'Roboto',

    );

    var stars = Row(
      mainAxisAlignment: MainAxisAlignment.center,
            children: [                
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              const Icon(Icons.star, color: Colors.black),
              const Icon(Icons.star, color: Colors.black),
              
            ],
    );

    final rating = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        const Text('170 Reviews',
        style: TextStyle(
            letterSpacing: 0.5,
            fontSize: 20,
            height: 2,
        ),
        ),
      ],
    );
    final iconList = DefaultTextStyle.merge(
       style: setStyle,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOKS'),
                const Text('1hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS'),
                const Text('4 - 6'),
              ],
            ),
              ],
            ) 
    );

    final leftColumn = Column(
      children: [
        titleText,
        subtext,
        rating,
        iconList,
      ],
    );
    final rightColumn = 
    Image.asset('assets/images/pavlova.jpg',
    fit: BoxFit.cover,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 400,
                child: leftColumn,
              ),
              rightColumn,
            ],
          ),
        ),
        )
        
      ),
    );   
}
}







