class ProductModel {
  final String? name;
  final String? image;
  final num? price;
  final int? color;

  ProductModel({
    this.name,
    this.image,
    this.price,
    this.color,
  });

  List<ProductModel> get cameraList => [
        ProductModel(
          name: 'Instax Mini Mint 7+',
          image: 'assets/images/instaxmint.png',
          price: 49.90,
          color: 0xff70b1a1,
        ),
        ProductModel(
          name: 'Instax Mini Blue 7+',
          image: 'assets/images/instaxblue.png',
          price: 50.90,
          color: 0xff77a0c6,
        ),
        ProductModel(
          name: 'Instax Mini Choral 7+',
          image: 'assets/images/instaxcoral.png',
          price: 51.90,
          color: 0xffb0463c,
        ),
        ProductModel(
          name: 'Instax Mini Pink 7+',
          image: 'assets/images/instaxpink.png',
          price: 52.90,
          color: 0xfffcf9496,
        ),
        ProductModel(
          name: 'Instax Mini Lavender 7+',
          image: 'assets/images/instaxlavender.png',
          price: 53.90,
          color: 0xff855f8c,
        ),
      ];
}
