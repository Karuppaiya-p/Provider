import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:third/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<TextFontSize>(
        create: (context)=>TextFontSize(fontsize: 12),
        child:MyHomePage()
        ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  double textSize=12;

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text('PK Provider'),
      ),
      body: Column(
        children:<Widget>[Container(
          height: MediaQuery.of(context).size.height*3/4,
          child:Scrollbar(
          child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<TextFontSize>(
              builder: (context,value,child){
                return Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularis",
              style: TextStyle(fontSize: value.getFontSize));
              }
            ),
          ),
          ),
          ),
        ),
        Divider(height:4),
        Consumer<TextFontSize>(
          builder: (context,value,child){
            return  Slider(
value: value.getFontSize,
min: 12,
max: 64,
divisions: 12,
label: '${value.getFontSize.round()}',
onChanged: (val){
  value.setFontSize=val;
},
          );
          }
        )]
        
      ),
    );
  }
}
