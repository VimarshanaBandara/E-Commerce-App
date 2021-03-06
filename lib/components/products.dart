
import 'package:ecom/pages/products_details.dart';
import 'package:flutter/material.dart';




class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var product_list =[
    {
      "name" : "Shirt",

      "picture":"images/shirt1.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "dress",
      "picture":"images/shirt3.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "Frock",
      "picture":"images/shirt2.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "Denim",
      "picture":"images/shirt4.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "shoes",
      "picture":"images/shirt5.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "toys",
      "picture":"images/shirt6.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "makeup",
      "picture":"images/frock1.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "blouse",
      "picture":"images/frock2.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "saree",
      "picture":"images/frock3.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "oil",
      "picture":"images/frock4.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "oil",
      "picture":"images/blouse1.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "skirt",
      "picture":"images/blouse2.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "skirt",
      "picture":"images/baby1.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/baby2.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/baby3.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/baby4.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/shoes1.png",
      "old price":100,
      "price":50
    },
    {
      "name" : "skirt",
      "picture":"images/shoes2.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/shoes3.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/shoes4.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/shoes5.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/shoes6.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/shoes7.png",
      "old price":100,
      "price":50
    },

    {
      "name" : "skirt",
      "picture":"images/shoes8.png",
      "old price":100,
      "price":50
    },







  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: product_list.length,
      itemBuilder: (BuildContext context , int index){
        return Padding(
            padding: EdgeInsets.all(4.0),
            child:    Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old price'],
              prod_price: product_list[index]['price'],

            )
        )

        ;
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,


  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text('hero 1'),
          child:Material(
            child: InkWell(
              onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetails(
                product_detail_name: prod_name,
                product_detail_new_price: prod_price,
                product_detail_old_price: prod_old_price,
                product_detail_picture: prod_picture,

              ))),


              child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                        ),
                        Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                      ],
                    )
                ),
                child: Image.asset(prod_picture,fit: BoxFit.fill,),

              ),
            ),
          )
      ),

    );
  }
}