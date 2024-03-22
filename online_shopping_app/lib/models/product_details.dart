class ProductDetails {
  String name;
  String price;
  String imagePath;
  bool isFav;

  ProductDetails({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.isFav,
  });
}

List<ProductDetails> productItems = [
  ProductDetails(
    name: "Leather Jacket",
    price: "2.280",
    imagePath: "https://www.clubmonaco.com/dw/image/v2/BGJB_PRD/on/demandware.static/-/Sites-masterCatalog_ClubMonaco/default/dw3d1a9fd2/hi-res/cm-295863681100_lifestyle.jpg?sw=1000&sh=1250&sfrm=jpg",
    isFav: false,
  ),
  ProductDetails(
    name: "Biker Coat",
    price: "1.890",
    imagePath: "https://getketchadmin.getketch.com/product/8905040283708/660/HLJK000122_1.JPG",
    isFav: true,
  ),
  ProductDetails(
    name: "Green Hoodie",
    price: "500.00",
    imagePath: "https://m.media-amazon.com/images/I/61hoJTBG-HL._UX569_.jpg",
    isFav: false,
  ),
  ProductDetails(
    name: "Orange Hoodie",
    price: "486.00",
    imagePath: "https://cdn.pixelspray.io/v2/black-bread-289bfa/woTKH5/wrkr/t.resize(h:1000,w:820)/data/Superdry/18-08-2023/410408026012_3.jpg",
    isFav: false,
  ),
   ProductDetails(
    name: "Denim Jacket",
    price: "999.00",
    imagePath:"https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyprod/wrkr/products/pictures/item/free/original/8907880516404/FoOTpAjdeK-1.jpg",
    isFav: true,
  ),
     ProductDetails(
    name: "T Shert",
    price: "444.00",
    imagePath:"https://imagena1.lacoste.com/dw/image/v2/AAUP_PRD/on/demandware.static/-/Sites-master/default/dw9fc18e63/TH1708_001_20.jpg?imwidth=915&impolicy=product",
    isFav: false,
  ),
];
