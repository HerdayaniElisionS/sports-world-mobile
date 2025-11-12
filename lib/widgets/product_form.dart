import 'package:flutter/material.dart';
import 'package:sportsworld/widgets/left_drawer.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _name = "";
  String _description = "";
  String _category = "jersey";
  String _thumbnail = "";
  bool _isFeatured = false;
  num _price = 0;

  final List<String> _categories = [
    'jersey',
    'boot',
    'ball',
    'accessory',
    'training',
  ];

  // simple URL check
  bool _looksLikeUrl(String s) {
    final uri = Uri.tryParse(s);
    return uri != null &&
        (uri.isScheme('http') || uri.isScheme('https')) &&
        uri.host.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        title: const Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Add Product',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NAME
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Product Name",
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), 
                    ),
                  ),
                  onChanged: (v) => setState(() => _name = v),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) {
                      return "Name cannot be empty";
                    }
                    if (v.trim().length < 3) {
                      return "Name must be at least 3 characters";
                    }
                    if (v.trim().length > 50) {
                      return "Name must be ≤ 50 characters";
                    }
                    return null;
                  },
                ),
              ),

              // PRICE (number)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "e.g. 299000",
                    labelText: "Price (IDR)",
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), 
                    ),
                  ),
                  onChanged: (v) {
                    final val = num.tryParse(v);
                    setState(() => _price = val ?? 0);
                  },
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) {
                      return "Price cannot be empty";
                    }
                    final val = num.tryParse(v);
                    if (val == null) return "Price must be a number";
                    if (val <= 0) return "Price must be positive";
                    if (val > 100000000) return "Price too large";
                    return null;
                  },
                ),
              ),

              // DESCRIPTION (long text)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Describe the product",
                    labelText: "Description",
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0),
                    ),
                  ),
                  onChanged: (v) => setState(() => _description = v),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) {
                      return "Description cannot be empty";
                    }
                    if (v.trim().length < 10) {
                      return "Description must be at least 10 characters";
                    }
                    if (v.trim().length > 500) {
                      return "Description must be ≤ 500 characters";
                    }
                    return null;
                  },
                ),
              ),

              // CATEGORY (dropdown)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Category",
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), 
                    ),
                  ),
                  value: _category,
                  items: _categories
                      .map(
                        (c) => DropdownMenuItem(
                          value: c,
                          child: Text(
                            c[0].toUpperCase() + c.substring(1),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (nv) =>
                      setState(() => _category = nv ?? _category),
                ),
              ),

              // THUMBNAIL (optional URL)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Thumbnail URL (optional)",
                    labelText: "Thumbnail URL",
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), 
                    ),
                  ),
                  onChanged: (v) => setState(() => _thumbnail = v),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return null;
                    if (!_looksLikeUrl(v.trim())) {
                      return "Please enter a valid http(s) URL";
                    }
                    return null;
                  },
                ),
              ),

              // IS FEATURED
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SwitchListTile(
                  title: const Text("Mark as Featured"),
                  value: _isFeatured,
                  onChanged: (val) => setState(() => _isFeatured = val),
                ),
              ),

              // SAVE BUTTON
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), 
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title:
                                  const Text('Product saved successfully!'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Name: $_name'),
                                    Text('Price: $_price'),
                                    Text('Description: $_description'),
                                    Text('Category: $_category'),
                                    Text(
                                        'Thumbnail: ${_thumbnail.isEmpty ? "(none)" : _thumbnail}'),
                                    Text(
                                        'Featured: ${_isFeatured ? "Yes" : "No"}'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                    setState(() {
                                      _name = "";
                                      _description = "";
                                      _category = "jersey";
                                      _thumbnail = "";
                                      _isFeatured = false;
                                      _price = 0;
                                    });
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
