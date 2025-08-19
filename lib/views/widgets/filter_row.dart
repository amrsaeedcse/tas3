import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/controllers/sorting/sort_control.dart';

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
              context.read<SortByControl>().setSorting(SortBy.all);
              currentIndex = 0;
            });
          },
          isSelected: currentIndex == 0,
        ),
        FilterButton(
          text: "Featured",
          onTap: () {
            setState(() {
              context.read<SortByControl>().setSorting(SortBy.featured);

              currentIndex = 1;
            });
          },

          isSelected: currentIndex == 1,
        ),
        FilterButton(
          text: "New",
          onTap: () {
            setState(() {
              context.read<SortByControl>().setSorting(SortBy.newPr);

              currentIndex = 2;
            });
          },
          isSelected: currentIndex == 2,
        ),
      ],
    );
  }
}
