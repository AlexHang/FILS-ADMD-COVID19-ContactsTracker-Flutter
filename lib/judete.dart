import 'package:flutter/material.dart';

class listaJudete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COVID19 Contacts Tracker'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            child:Row(
              children: <Widget>[
                //Image.network("https://upload.wikimedia.org/wikipedia/commons/1/19/ROU_Bucharest_CoA.png"),
              Padding(
              padding: const EdgeInsets.all(20),
               child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/ROU_Bucharest_CoA.png/41px-ROU_Bucharest_CoA.png',
                      width: 50,
                      height: 70,
                      fit:BoxFit.contain

                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(20),
               child: Text("Bucuresti", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            )

              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          GestureDetector(
            child:Row(
              children: <Widget>[
                //Image.network("https://upload.wikimedia.org/wikipedia/commons/1/19/ROU_Bucharest_CoA.png"),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Actual_Alba_county_CoA.png/60px-Actual_Alba_county_CoA.png',
                        width: 50,
                        height: 70,
                        fit:BoxFit.contain

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Alba", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ),


              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          GestureDetector(
            child:Row(
            children: <Widget>[
              //Image.network("https://upload.wikimedia.org/wikipedia/commons/1/19/ROU_Bucharest_CoA.png"),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Stema_judetului_Arad.png/60px-Stema_judetului_Arad.png',
                      width: 50,
                      height: 70,
                      fit:BoxFit.contain
                    ),
                  ),
                ),
                Padding(
              padding: const EdgeInsets.all(20),
              child: Text("Arad", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),


              ],
            ),
            onTap: () {
            Navigator.pop(context);
            },
          ),
          GestureDetector(
            child:Row(
              children: <Widget>[
                //Image.network("https://upload.wikimedia.org/wikipedia/commons/1/19/ROU_Bucharest_CoA.png"),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Actual_Arges_county_CoA.png/60px-Actual_Arges_county_CoA.png',
                        width: 50,
                        height: 70,
                        fit:BoxFit.contain
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Arges", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ),


              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          FlatButton(
            child: Text("Alba"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          //all the children widgets that you need
        ],
      ),
    );

  }
}