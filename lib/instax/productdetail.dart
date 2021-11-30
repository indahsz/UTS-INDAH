import 'package:flutter/material.dart';
import 'productmodel.dart';

class ItemDetailScreen extends StatelessWidget {
  final ProductModel productModel;
  const ItemDetailScreen(this.productModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey[700]!,
            width: 1,
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(productModel.color!),
              width: 1,
            ),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(productModel.color!),
            ),
          ),
        ),
        title: Image.asset(
          'assets/images/fujifilm-banner.png',
          width: 150,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32.0),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                productModel.image!,
                width: MediaQuery.of(context).size.width / 1.5,
              ),
            ),
            const SizedBox(height: 32.0),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Instax ',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: productModel.name!,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        productModel.color!,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Be real and fun with the INSTAX MINI 7+ Cool design, colorful and compact, this instant camera is fun and esay to use. Point and shoot and girve your day some fun!',
              style: TextStyle(),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Point & Shoot',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'The Mini 7+ is esay to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed focus lens, the Mini 7+ makes it esay for you to be creative and live in the moment.',
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Mini But With Full-Size Memories',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell.\n\nUsing professional hight-quality film technology (as you\'d expect from m Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.',
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Mini Film',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Mini moments with maximum impact. What’s your next mini moment?',
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Plenty of Great Color Choices',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue',
            ),
            const SizedBox(height: 8.0),
            const Text(
              'The Mini 7+ Has Your Back!',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Depending upon the weather conditions, you can easily control brightness to obtain a great picture',
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Fun All The Time!',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Live in the moment and enjoy your Mini 7+, and give your day some instant fun!',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        height: 90,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[700]!,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$ ${productModel.price!.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(productModel.color!),
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
