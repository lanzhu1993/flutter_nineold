import 'package:flutter/material.dart';
import 'package:nineold/widget/nine_old_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<List<String>> images = [];

  int count = 0;

  @override
  void initState() {
    super.initState();
    images.add(getData());
  }

  List<String> getData() {
    List<String> list = [];
    list.add("http://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&f=JPEG?w=900&h=1350");
    list.add("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3687862105,320198720&fm=26&gp=0.jpg");
    list.add("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=339659526,3524437886&fm=26&gp=0.jpg");
    list.add("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1492148550,3573121792&fm=11&gp=0.jpg");
    list.add("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3059211665,2147448542&fm=26&gp=0.jpg");
    list.add("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2333676140,2717071870&fm=11&gp=0.jpg");
    list.add("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2417108265,1198830140&fm=26&gp=0.jpg");
    list.add("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=244450851,2728981198&fm=26&gp=0.jpg");
    list.add("https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=882251069,3759945909&fm=11&gp=0.jpg");
    list.add("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2083759825,3454063564&fm=26&gp=0.jpg");
    list.add("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=310077658,2097249993&fm=11&gp=0.jpg");
    list.add("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=415170272,1239551712&fm=26&gp=0.jpg");
    list.add("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1030558027,1672821388&fm=26&gp=0.jpg");
    list.add("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3153722339,140981551&fm=26&gp=0.jpg");
    list.add("https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1584605109&t=4c346851d3f4f4cf76439fe6440ffe9f");
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Nine Old"),
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: NineOldWidget(images[count]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
            images.add(getData().sublist(0, count % 15));
          });
        },
      ),
    );
  }
}
