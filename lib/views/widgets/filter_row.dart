import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'filter_button.dart';

class FilterRow extends StatefulWidget {
  const FilterRow({super.key});

  @override
  State<FilterRow> createState() => _FilterRowState();
}

class _FilterRowState extends State<FilterRow> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.w,
      children: [
        FilterButton(
          text: "All",
          onTap: () {
            setState(() {
              currentIndex = 0;
            });
          },
          isSelected: currentIndex == 0,
        ),
        FilterButton(
          text: "Featured",
          onTap: () {
            setState(() {
              currentIndex = 1;
            });
          },

          isSelected: currentIndex == 1,
        ),
        FilterButton(
          text: "New",
          onTap: () {
            setState(() {
              currentIndex = 2;
            });
          },
          isSelected: currentIndex == 2,
        ),
      ],
    );
  }
}
