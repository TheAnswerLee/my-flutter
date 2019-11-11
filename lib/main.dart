import 'package:flutter/material.dart';

void main() => runApp(MyApp(
    //generate生成
    items: new List<String>.generate(100, (i) => "Item $i")));

//在这个项目中主要练习一个组件化  在flutter里面  万物皆组件
class MyApp extends StatelessWidget {
  //final 变量只能被设置一次 后面是一个结果值
  final List<String> items;
  //构造函数里面的key值是必须写的  @required 是必须要传的
  MyApp({Key key, @required this.items}) : super(key: key);
  @override //重写
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'app',
        //home是主体  主体后面接搭建主体的内容
        home: Scaffold(
            appBar: AppBar(
              title: Text(' App'),
            ),
            //列表组件 ListView.builder:动态列表组件
            body: new ListView.builder(
                  //传过来参数的长度
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return new ListTile(
                      title: new Text('${items[index]}'),
                    );
                  },

                ),
              ),
            );
  }
}

// class MyList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       //横向坐标
//       scrollDirection: Axis.horizontal,
//       children: <Widget>[
//         new Container(
//           width: 190.0,
//           color: Colors.lightBlue,
//           // new Image.network('http://image.woshipm.com/wp-files/img/76.jpg')
//         ),
//         new Container(
//           width: 190.0,
//           color: Colors.deepOrange,
//         ),
//         new Container(
//           width: 190.0,
//           color: Colors.amber,
//         ),
//         new Container(
//           width: 190.0,
//           color: Colors.deepPurpleAccent,
//         ),
//       ],
//     );
//   }
// }
