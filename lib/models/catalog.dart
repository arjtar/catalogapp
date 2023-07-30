
class CatalogModel {
static List <Item> items = [
Item(
    id: 1,
    name: "New Iphone",
    desc: "Apple company",
    price: 9999,
    color: "#F70FAB",
    image: "https://cdn.pixabay.com/photo/2018/01/08/02/34/technology-3068617_960_720.jpg"),

];
}

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
  // {required int id, required String name, required String desc, required int price, required String color,
  //  required String image}),
 


 factory Item.fromMap(Map<String,dynamic> map) {
  return Item(
    id: map["id"],
    name: map["name"],
    desc: map["desc"],
    price:map["price"],
    color:map["color"],
    image:map["image"],
  );
 }

 toMap() => {
  "id":id,
  "name":name,
  "desc":desc,
  "price":price,
  "color":color,
  "image":image,
 };

   }

