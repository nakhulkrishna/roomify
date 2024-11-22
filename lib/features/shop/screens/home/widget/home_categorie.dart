import 'package:flutter/material.dart';
import 'package:nest_heven/common/widgets/image_text_widge/image_digets.dart';

class homeCategories extends StatelessWidget {
  const homeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return NverticalImageText(
            image: '',
            title: 'Couch',
            onTap: () {},
          );
        },
      ),
    );
  }
}
