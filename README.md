# flutter_nineold

九宫格图片列表，支持9+以上数量的显示,支持Hero动画预览图片

# Demo
<image src="https://github.com/lanzhu1993/flutter_nineold/blob/master/example/assets/video.gif" style="width: 300px" />



# 开始

在flutter的项目文件中增加依赖

```
dependencies:
  ...
    nineold: ^1.1.0
```

关于如何运行flutter项目, 参考官方文档[documentation](https://flutter.io/).


# 版本更新

1.增加缩略图显示，原图查看

2.增加查看原图返回事件


# 使用方法

Import nine_old_widget.dart

```
import 'package:nineold/widget/nine_old_widget.dart';
```

简单使用方法

```
...
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
```



### 使用说明
NineOldWidget 是用来封装图片九宫格显示的组件, 方便使用者能更好的使用该插件. 使用者只要需要注入图片集合，集成和Photo_view的Hero动画以及网络图片加载的展位图进度显示，就可以实现图片查看,九宫格列表 





### 致谢

[timy-messenger](https://github.com/janoodleFTW/timy-messenger)

[photo_view](https://github.com/renancaraujo/photo_view)



