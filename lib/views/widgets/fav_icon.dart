import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controllers/fav_controller.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/models/movie_model.dart';

class FavIcon extends StatefulWidget {
  const FavIcon({super.key, required this.model, required this.allowAdding});
  final MovieModel model;
  final bool allowAdding;
  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (!widget.model.isFav) {
            widget.model.isFav = true;
            widget.allowAdding == true
                ? Provider.of<FavController>(
                    context,
                    listen: false,
                  ).addToList(widget.model)
                : null;
          } else {
            widget.model.isFav = false;
            Provider.of<FavController>(
              context,
              listen: false,
            ).removeByRef(widget.model);
          }
        });
      },
      icon: widget.model.isFav == false
          ? Icon(Icons.bookmark_add, color: AppColors.textPrimary)
          : Icon(Icons.bookmark_added, color: AppColors.selected),
    );
  }
}
