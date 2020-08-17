# flutter_nineold

九宫格图片列表，支持9+以上数量的显示,支持Hero动画预览图片

# Demo
<image src="https://github.com/lanzhu1993/flutter_nineold/blob/master/example/assets/video.gif" style="width: 300px" />



# 开始

在flutter的项目文件中增加依赖

```
dependencies:
  ...
    nineold: ^1.3.2
```

关于如何运行flutter项目, 参考官方文档[documentation](https://flutter.io/).


# 版本更新


## 1.3.2

1.图片Hero动画相同地址不能加载

2.修复Hero动画黑屏显示

## 1.3.1

1.图片长按回调图片位置

2.修复图片显示错位bug

## 1.3.0

1.增加查看图片长按事件回调

2.支持自定义加载框，以及更多图片文字样式


## 1.2.0

1.适配屏幕宽高显示

2.支持动态显示9+以上图片


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
         child: NineOldWidget(
           images: images[count],//必填
           onLongPressListener: (position) {//可选
             //长按事件回调
             print("长按事件回调当前位置 ： $position");
           },
           backgroundColor: Colors.white,//可选
           //加载背景颜色
           valueColor: Colors.red,//可选
           //加载进度条颜色
           strokeWidth: 4,//可选
           //加载进度条宽度
           moreStyle: TextStyle(fontSize: 28, color: Colors.orange), //更多加号样式
         ),
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


NineOldWidget控件构造方法以及参数设置

```
  NineOldWidget(
      {@required this.images,
      this.moreStyle,
      this.backgroundColor = Colors.white,
      this.strokeWidth = 3,
      this.valueColor = Colors.tealAccent,
      this.onLongPressListener});
```




### 使用说明
NineOldWidget 是用来封装图片九宫格显示的组件, 方便使用者能更好的使用该插件. 使用者只要需要注入图片集合，集成和Photo_view的Hero动画以及网络图片加载的展位图进度显示，就可以实现图片查看,九宫格列表 





### 致谢

[timy-messenger](https://github.com/janoodleFTW/timy-messenger)

[photo_view](https://github.com/renancaraujo/photo_view)



