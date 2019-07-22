import 'package:flutter/material.dart';
import 'package:customer/components/pages/prouct_details.dart';


class Oth_pro extends StatefulWidget {
  @override
  _Oth_proState createState() => _Oth_proState();
}

class _Oth_proState extends State<Oth_pro> {
   var product_list =[
    {
      "id":"1",
      "name": "Bags",
      "picture1":"images/products/bags.jpg",
      "picture2":"images/products/bags.jpg",
      "picture3":"images/products/bags.jpg",
      "price":4000,
      "made_of":"leather",
      "description":"This is a leather bag.",
      "category":"others",
      "avg_rating":4,
    },
    {
      "id":"2",
      "name": "Bottles",
      "picture1":"images/products/bottles.jpg",
      "picture2":"images/products/bottles.jpg",
      "picture3":"images/products/bottles.jpg",
      "price":1200,
      "made_of":"glass",
      "description":"These are decorated glass.",
      "category":"others",
      "avg_rating":3,
    },
    ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext,int index){
          return Single_prod(
            prod_id:product_list[index]['id'],
            prod_name: product_list[index]['name'],
            prod_picture1: product_list[index]['picture1'],
            prod_picture2: product_list[index]['picture2'],
            prod_picture3: product_list[index]['picture3'],
            prod_price: product_list[index]['price'],
            prod_description: product_list[index]['description'],
            prod_made_of: product_list[index]['made_of'],
            prod_category:product_list[index]['category'],
            prod_avg_rating:product_list[index]['avg_rating'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_id;
  final prod_name;
  final prod_picture1;
  final prod_picture2;
  final prod_picture3;
  final prod_price;
  final prod_description;
  final prod_made_of;
  final prod_category;
  final prod_avg_rating;

  Single_prod(
  {
  this.prod_id,
  this.prod_name,
  this.prod_picture1,
  this.prod_picture2,
  this.prod_picture3,
  this.prod_price,
  this.prod_description,
  this.prod_avg_rating,
  this.prod_category,
  this.prod_made_of,
  }
  );
  @override
  Widget build(BuildContext context) {
      return Card(
      child: Hero(tag: new Text("hero 1"),child: Material(
        child: InkWell(onTap: null,
        // ()=> Navigator.of(context).push(new MaterialPageRoute(
        //   //passing the values of product to product_details page
        //     builder: (context)=> new ProductDetails(
        //   product_detail_id: prod_id,
        //   product_detail_name: prod_name,
        //   product_detail_price: prod_price,
        //   product_detail_description:prod_description,
        //    product_detail_picture1: prod_picture1,
        //   product_detail_picture2: prod_picture2,
        //   product_detail_picture3: prod_picture3,
        //   product_detail_avg_rating: prod_avg_rating,
        //   product_detail_category:prod_category,
        //   product_detail_made_of:prod_made_of,
        //  ),),),
        child: GridTile(
            footer: Container(
              color: Colors.white,
              child: new Row(children: <Widget>[
                Expanded(
                  child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                ),
                new Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
              ],)
            ),
            child: Image.asset(prod_picture1,
            fit: BoxFit.cover,)),
        ),
      ),),
    );
  }
}