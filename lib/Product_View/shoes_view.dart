import 'package:flutter/material.dart';

class ShoeDisplayScreen extends StatefulWidget {
  const ShoeDisplayScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShoeDisplayScreenState createState() => _ShoeDisplayScreenState();
}

class _ShoeDisplayScreenState extends State<ShoeDisplayScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> images = [
    'assets/images/pic3.png',
    'assets/images/pic2.png',
    'assets/images/pic1.png',
  ];

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  int selectedSizeIndex = 4;
  int selectedColorIndex = 1;

  final List<String> sizes = ['39', '39.5', '40', '40.5', '41.5'];
  final List<Color> colors = [
    Colors.white,
    Colors.black,
    Colors.blue,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 270,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Stack(
              children: [
                PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Image.asset(
                        images[index],
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.shopping_bag,
                      size: 20,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 20,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(images.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: _currentPage == index
                              ? Colors.black
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Axel Arigato",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text('Clean 90 Triple Sneakers'),
                              const SizedBox(height: 4),
                              Row(
                                children: List.generate(5, (index) {
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  );
                                })
                                  ..add(const Text(' (270 Reviews)')),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.remove, size: 16),
                                  SizedBox(width: 8),
                                  Text("1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 8),
                                  Icon(Icons.add, size: 16),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Available In Stock',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Size',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  ...List.generate(sizes.length, (index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedSizeIndex = index;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border: Border.all(
                                                color: Colors.grey.shade300),
                                            color: selectedSizeIndex == index
                                                ? Colors.black
                                                : Colors.white,
                                          ),
                                          height: 50,
                                          width: 50,
                                          child: Center(
                                            child: Text(
                                              sizes[index],
                                              style: TextStyle(
                                                fontSize: 15,
                                                color:
                                                    selectedSizeIndex == index
                                                        ? Colors.white
                                                        : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 50,
                          margin: const EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 10,
                                offset: const Offset(0, -5),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(colors.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedColorIndex = index;
                                  });
                                },
                                child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: colors[index],
                                          border: Border.all(
                                              color: Colors.grey.shade300),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: selectedColorIndex == index
                                          ? const Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 16,
                                            )
                                          : null,
                                    )),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Description',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Engineered to crush any movement-based workout, these sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a pair.",
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Price',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '\$245.00',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
