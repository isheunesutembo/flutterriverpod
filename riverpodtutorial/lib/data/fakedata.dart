import 'package:riverpodtutorial/models/product.dart';

class FakeData{

  static final List<Product>products=[
    Product(productId: 1,name: "iphone 14 Max",description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In iaculis mauris id mattis gravida. Nunc finibus risus ut convallis pulvinar. Lorem ipsum dolor sit amet.",newPrice: 999,oldPrice: 1200,image: "assets/images/iphone14max.jpg"),
      Product(productId: 2,name: "apple mac book pro m2 16",description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In iaculis mauris id mattis gravida. Nunc finibus risus ut convallis pulvinar. Lorem ipsum dolor sit amet.",newPrice: 2999,oldPrice: 3500,image: "assets/images/applemacbookpro.png"),
        Product(productId: 3,name: "apple mac book pro m2 16",description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In iaculis mauris id mattis gravida. Nunc finibus risus ut convallis pulvinar. Lorem ipsum dolor sit amet.",newPrice: 1850,oldPrice: 2500,image: "assets/images/razorblade17.jpg"),
          Product(productId: 4,name: "apple mac book pro m2 16",description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In iaculis mauris id mattis gravida. Nunc finibus risus ut convallis pulvinar. Lorem ipsum dolor sit amet.",newPrice: 2999,oldPrice: 3500,image: "assets/images/macbookprom116.jpg")
     
  ];
}