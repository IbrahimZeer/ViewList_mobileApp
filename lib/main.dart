import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("top 5 football players"),
        ),
      body: ListView(children: const [
        topfoot('https://i.pinimg.com/564x/24/d6/36/24d63679c54992f0b6694e1d994f9ae3.jpg','Leo Messi',1,100,'ST , CF , RW'),
        topfoot('https://i.pinimg.com/564x/be/7e/54/be7e54860d66d89d3144f0ca49151c27.jpg','Haaland',2,89,'ST'),
        topfoot('https://i.pinimg.com/564x/c2/b3/d0/c2b3d0eaef9bd55cb60a102aa2c13f38.jpg','vinicius jr',3,79,'LW'),
        topfoot('https://i.pinimg.com/564x/d4/73/a5/d473a58f8525b4b43cdc361a962bd9a4.jpg','Dejong',3,77,'CM , CAM , CMD'),
        topfoot('https://i.pinimg.com/564x/5c/1c/5c/5c1c5c46fe5eef95f2bcc331c51d58ba.jpg','Ronaldo',4,70,'ST'),
        topfoot('https://i.pinimg.com/564x/a6/80/61/a6806173c371530abf771eeeda92aa0d.jpg','mohamed salah',5,69,'ST , RW '),
      ],
      ),
      ),
    );
  }
}

class topfoot extends StatelessWidget {
 final String name;
 final String mejor;
 final int id ;
 final double mark;
 final String image ;


 String rate(){

   if (mark >90 && mark <=100){
     return '*****';
   } else if (mark>=80 && mark<90){
     return '****';
   } else if(mark >=70 && mark<80 ){
     return '***';
   }else if (mark >= 60 && mark<70){
     return '**';
   }else if (mark >=50 && mark<60){
     return '*';
   }else {return 'dose not exist';}
 }
  const topfoot(this.image,this.name,this.id,this.mark,this.mejor, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      height: 150,
      child: Card(
        color:  Colors.grey,
        child: Row(
          children: [
            Image.network(image),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(id.toString(),style: TextStyle(fontSize: 20),),
                Text(name,  style: TextStyle(fontSize: 20)),
                Text(mejor, style: TextStyle(fontSize: 20)),
                Text(rate(),    style: TextStyle(fontSize: 20))
              ],
            )
          ],
        ),
      ),
    );
  }
}

