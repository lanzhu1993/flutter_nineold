import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nineold/widget/nine_old_widget.dart';

import 'generated/l10n.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "国际化",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<List<String>> images = [];

  @override
  void initState() {
    super.initState();
    images.add(getData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return _buildActiveItem(index, getData().sublist(0, index));
        },
        itemCount: 13,
        separatorBuilder: (BuildContext context, int index) =>
            Divider(height: 1.0, color: Colors.lightBlueAccent),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            // count++;
            // images.add(getData().sublist(0, count % 15));
          });
        },
      ),
    );
  }

  Widget _buildActiveItem(int index, List<String> photos) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildActiveItemHeader(index),
          null != photos || photos.isNotEmpty
              ? NineOldWidget(
                  images: photos,
                  //必填
                  onLongPressListener: (position) {
                    //可选
                    //长按事件回调
                    print("长按事件回调当前位置 ： $position");
                  },
                  backgroundColor: Colors.white,
                  //可选
                  //加载背景颜色
                  valueColor: Colors.red,
                  //可选
                  //加载进度条颜色
                  strokeWidth: 4,
                  //可选
                  //加载进度条宽度
                  moreStyle:
                      TextStyle(fontSize: 28, color: Colors.orange), //更多加号样式
                  //可选
                  //资源加载失败显示
                  errorWidget: Icon(Icons.error_outline_rounded),
                )
              : SizedBox()
        ],
      ),
    );
  }

  Widget _buildActiveItemHeader(int index) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.network(
                  "http://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&f=JPEG?w=900&h=1350",
                  width: 30.0,
                  height: 30.0,
                ),
              ),
            ],
          ),
          Text("${S.of(context).unit_the}$index${S.of(context).unit_item}")
        ],
      ),
    );
  }

  List<String> getData() {
    List<String> list = [];
    list.add(
        "http://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&f=JPEG?w=900&h=1350");
    list.add(
        "http://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&f=JPEG?w=900&h=1350");
    list.add(
        "http://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&f=JPEG?w=900&h=1350");
    list.add(
        "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3687862105,320198720&fm=26&gp=0.jpg");
    list.add(
        "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=339659526,3524437886&fm=26&gp=0.jpg");
    list.add(
        "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1492148550,3573121792&fm=11&gp=0.jpg");
    list.add(
        "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3059211665,2147448542&fm=26&gp=0.jpg");
    list.add(
        "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2333676140,2717071870&fm=11&gp=0.jpg");
    list.add(
        "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2417108265,1198830140&fm=26&gp=0.jpg");
    list.add(
        "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=244450851,2728981198&fm=26&gp=0.jpg");
    list.add(
        "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2083759825,3454063564&fm=26&gp=0.jpg");
    list.add(
        "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=310077658,2097249993&fm=11&gp=0.jpg");
    list.add(
        "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=415170272,1239551712&fm=26&gp=0.jpg");
    list.add(
        "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1030558027,1672821388&fm=26&gp=0.jpg");
    list.add(
        "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3153722339,140981551&fm=26&gp=0.jpg");
    list.add(
        "https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1584605109&t=4c346851d3f4f4cf76439fe6440ffe9f");
    list.add(
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594817167403&di=87226dc3d6b70a7e02722b9f9bd9f33a&imgtype=0&src=http%3A%2F%2Ft9.baidu.com%2Fit%2Fu%3D1307125826%2C3433407105%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D5760%26h%3D3240");
    return list;
  }
}
