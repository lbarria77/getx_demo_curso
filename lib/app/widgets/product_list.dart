import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/controllers/global_controller.dart';
import 'package:getx_demo_curso/app/data/models/product.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();
    return GetBuilder<GlobalController>(
      id: 'products',
      builder: (_) {
        return Container(
          child: ListView.builder(
            itemCount: _.products.length,
            itemBuilder: (ctx, index) {
              final Product product = _.products[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text('USD ${product.price}'),
                trailing: IconButton(
                  onPressed: () {
                    _.onFavorite(index, !product.isFavorite);
                  },
                  icon: Icon(Icons.favorite, color: product.isFavorite ? Colors.red : Colors.grey,),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
