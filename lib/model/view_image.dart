import 'package:flutter/cupertino.dart';

class ListViewPhoto {
  @override
  Widget build(BuildContext context,List<String> imageUrls) {
    return ListView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Image.network(imageUrls[index]);
      },
    );
  }
}