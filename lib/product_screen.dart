import 'package:ecomerce/Product_View/bag_view.dart';
import 'package:ecomerce/Product_View/shoes_view.dart';
import 'package:ecomerce/constraints/custom.dart';

import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    color: Colors.transparent,
                  ),
                  child: CustomPaint(
                    size: const Size(150, 150),
                    painter: CircleLinePainter(),
                  ),
                ),
                const SizedBox(
                  width: 300,
                ),
                const Icon(
                  Icons.search,
                  size: 40,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  customContainer(
                      mainText: '45% Off', image: 'assets/images/newp.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  customContainer(
                      mainText: '50% Off', image: 'assets/images/bag.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  customContainer(
                      mainText: '70% Off', image: 'assets/images/wa.png'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Text(
                  'New Arrivals',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 200,
                ),
                Text('View all')
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BagView()));
                      },
                      child: Container(
                        height: 200,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/bg.png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'The Marc Jacobs',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Traveller Tale',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '\$195.00',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShoeDisplayScreen()));
                      },
                      child: Container(
                        height: 200,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/shoes.png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Axel Arigato',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Clean 90 Triple Sneakers',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '\$245.00',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Populars',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 240,
                ),
                Text('View all')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            productItem(
                imageUrl: 'assets/images/new.png',
                title: 'Gia Borghini',
                subtitle: 'RHW Rosio 1 Sandal',
                price: 740.00,
                rating: 4.5),
            const SizedBox(
              height: 10,
            ),
            productItem(
                imageUrl: 'assets/images/san.png',
                title: 'Grey Bridal Sandal',
                subtitle: '066606 2 Sandals',
                price: 160.00,
                rating: 5.0),
            const SizedBox(height: 10),
            productItem(
                imageUrl: 'assets/images/shoes.png',
                title: 'Fancy Shoes',
                subtitle: '007788 4 Shoes',
                price: 245.00,
                rating: 4.9)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            buildBarItem(Icons.home, 'Home', 0),
            buildBarItem(Icons.shopping_cart, 'Cart', 1),
            buildBarItem(Icons.notifications, 'Alerts', 2),
            buildBarItem(Icons.person, 'Profile', 3),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBarItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: _selectedIndex == index
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Text(label,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ),
              ],
            )
          : Icon(icon),
      label: '',
    );
  }
}
