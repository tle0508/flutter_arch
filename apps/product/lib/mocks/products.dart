
import 'package:product/features/home/domain/entities/product.dart';


final List<ProductToDisplay> products =[
  ProductToDisplay(id: 'prod-01', category: 'xxx', imageUrl: 'https://images.unsplash.com/photo-1625698311031-f0dd15be5144?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'T-shirt', price: 248000),
  ProductToDisplay(id: 'prod-02', category: 'xxx', imageUrl: 'https://images.unsplash.com/photo-1714700513036-558227ceabc4?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'ear ring', price: 5552),
  ProductToDisplay(id: 'prod-03', category: 'xxx', imageUrl: 'https://images.unsplash.com/photo-1600452410363-8a16b8ca06b0?q=80&w=2427&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'card', price: 23244),
  
];
final List<ProductToDisplay> diorproducts =[
  ProductToDisplay(id: 'prod-04', category: 'xxx', imageUrl: 'https://images.unsplash.com/photo-1611409776165-6b37cd22fd91?q=80&w=2535&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'ring', price: 45525),
  ProductToDisplay(id: 'prod-05', category: 'xxx', imageUrl: 'https://images.unsplash.com/photo-1618436917352-cd3d11ea4d15?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGRpb3J8ZW58MHx8MHx8fDA%3D', name: 'น้ำหอม', price: 25555),
  ProductToDisplay(id: 'prod-06', category: 'xxx', imageUrl: 'https://images.unsplash.com/photo-1592842312573-dca0b185d2e0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGRpb3J8ZW58MHx8MHx8fDA%3D', name: 'น้ำหอม', price: 44440),
];
final Map<String,String> categoryImages = {
  "electronics": 'https://images.unsplash.com/photo-1714165237014-a4e59036cb98?q=80&w=2669&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "jewelery":'https://plus.unsplash.com/premium_photo-1675643444417-a8ed81a4a3d8?q=80&w=2619&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "men's clothing":'https://images.unsplash.com/photo-1713813091747-123e452bd2cf?q=80&w=2688&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "women's clothing": 'https://images.unsplash.com/photo-1713813091339-6f0581cc0db6?q=80&w=2649&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
};