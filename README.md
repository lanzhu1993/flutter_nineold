# flutter_nineold

九宫格图片列表，支持9+以上数量的显示,支持Hero动画预览图片

# Demo
<image src="https://github.com/lanzhu1993/flutter_nineold/blob/master/example/assets/video.gif" style="width: 300px" />



# 开始

在flutter的项目文件中增加依赖

```
dependencies:
  ...
    nineold: ^3.2.2
```

关于如何运行flutter项目, 参考官方文档[documentation](https://flutter.io/).



# 版本更新
## 3.2.2

1.更新pub依赖以及flutter版本2.10.1

2.修复相同图片地址Hero动画tag相同问题

3.图片Hero动画相同地址不能加载

4.修复Hero动画黑屏显示

5.图片长按回调图片位置

6.修复图片显示错位bug

7.增加查看图片长按事件回调

8.支持自定义加载框，以及更多图片文字样式

9.适配屏幕宽高显示

10.支持动态显示9+以上图片

# 使用方法

Import nine_old_widget.dart

```
import 'package:nineold/widget/nine_old_widget.dart';
```

简单使用方法

```
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
        title: Text("Flutter Nine Old"),
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
          Text("第$index条")
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
```


NineOldWidget控件构造方法以及参数设置

```
  NineOldWidget(
      {@required this.images,
      this.moreStyle,
      this.backgroundColor = Colors.white,
      this.strokeWidth = 3,
      this.valueColor = Colors.tealAccent,
      this.onLongPressListener,
      this.errorWidget});
```




### 使用说明
NineOldWidget 是用来封装图片九宫格显示的组件, 方便使用者能更好的使用该插件. 使用者只要需要注入图片集合，集成和Photo_view的Hero动画以及网络图片加载的展位图进度显示，就可以实现图片查看,九宫格列表 





### 致谢

[timy-messenger](https://github.com/janoodleFTW/timy-messenger)

[photo_view](https://github.com/renancaraujo/photo_view)


## 浏览数

<img align="left" src = "https://profile-counter.glitch.me/flutter_nineold/count.svg" alt ="Loading">



