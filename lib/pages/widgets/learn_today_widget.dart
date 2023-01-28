import 'package:flutter/material.dart';


class LearnTodayWidget extends StatelessWidget {
  const LearnTodayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 35, right: 35), 
      child:Container(
        
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
            image: AssetImage('assets/images/std.jpg'),
            fit: BoxFit.cover
            ),
          
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  
                  child: _Img()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Img extends StatelessWidget {
  const _Img({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 180),
      child: Column(
        children: [
          Text('What would you like to learn today?', 
          style: TextStyle(
            fontSize: 20.0,
          )),
          Padding(
            padding: const EdgeInsets.only(right: 30,top: 15),
            child: Column(
                children: [
                  TextButton(onPressed: (){}, child: Text('Get Started',
                  style: TextStyle(fontSize: 15, color: Colors.black, backgroundColor: Colors.transparent)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.white)
                      )
                    )
                  )  
                )
              ], 
            ),
          ),
        ],
      ),
    );    
  }
}
