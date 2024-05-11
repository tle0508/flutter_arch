

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_ui/widgets/compounds/loading/loading_indicator.dart';
import 'package:core_ui/widgets/compounds/navbar/AppBottomNavigationBar.dart';
import 'package:core_ui/widgets/compounds/navbar/home_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:product/features/home/domain/entities/product.dart';
import 'package:product/features/home/domain/port/product/service.dart';
import 'package:product/features/home/presentation/widgets/catalog.dart';
import 'package:product/features/home/presentation/widgets/home_jumbotron.dart';
import 'package:product/mocks/products.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final IProductService service = getIt.get<IProductService>();

  List<List<ProductToDisplay>> products = [];
  List<String> categories = [];

  bool isLoading = false;


  @override
  void initState() {
    getProducts();
    super.initState();
  }

  void getProducts() async {

    setState(() {
      isLoading = true;
    });
    // Get category ทั้งหมด
    final categories = await service.getCategories();
    // Loop สร้าง Future list ในการเรียกดู product by category เอาไว้
    final productsFetchers = categories.map((e) => service.getByCategory(e));
    // เอา Future list ทั้งหมดมารอ reponse พร้อมๆกัน
    // ข้อดี: ทุกเส้นถูกเรียกพร้อมกัน ใช้เวลาเท่าเส้นที่เรียกนานที่สุด
    // ข้อเสีย: Server รับ load มากขึ้น เพราะถูกเรียกพร้อมกันทีเดียวหลายเส้น ต้องมีการวางแผน scaling ที่ดี
    final products = await Future.wait(productsFetchers);

    setState(() {
      this.categories = categories;
      this.products = products;
      isLoading = false;
    });
  }

  void onSelectProduct(ProductToDisplay product) {
    context.go('/detail',extra: product);
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const HomeNavbar(),
              Expanded(
                  child: isLoading
                      ? const Loading()
                      : ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Column(
                        key: UniqueKey(),
                        children: [
                          HomeJumbotron(
                              imageUrl: categoryImages[categories[index]]!,
                              title: categories[index].toUpperCase(),
                              buttonTitle: 'View Collection'
                          ),
                          Catalog(title: 'All products',products: products[index], onSelectProduct: onSelectProduct,),
                          const SizedBox(height: 24,)
                        ],
                      );
                      },
                    )
              )
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigationBar( 
        currentIndex: 0, // ตั้งค่า index ให้เป็น 0 สำหรับหน้า Home
        
      ),
      );
  }
}