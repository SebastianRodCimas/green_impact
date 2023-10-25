import 'package:flutter/material.dart';
import 'repository.dart';
import 'loading_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Products> _products = <Products>[];
  // List<Products> _productsDisplay = <Products>[];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    //fetchProducts().then((value)
    {
      setState(() {
        _isLoading = false;
        // _products.addAll(value);
        // _productsDisplay = _products;
        // print(_productsDisplay.length);
      });
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (!_isLoading) {
                return null;
                // index == 0 ? _searchBar() : ProductTile( product :this._productsDisplay[index - 1]);
              } else {
                return LoadingView();
              }
            },
            // itemCount: _productsDisplay.length + 1,
          ),
        ),
      ),
    );
  }
}
