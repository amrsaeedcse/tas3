import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/viewcontrol/viewcontrol_cubit.dart';

import 'customtext.dart';

class ChooseView extends StatelessWidget {
  const ChooseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewControlCubit, ViewControlState>(
      builder: (context, state) {
        return SizedBox(
          height: 40,
          child: Row(
            children: [
              Expanded(
                child: Material(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      context.read<ViewControlCubit>().chooseList();
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),

                      decoration: BoxDecoration(
                        color: state is ViewControlList
                            ? Colors.red[50]
                            : Colors.red,
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "List View",
                          weight: FontWeight.w700,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Material(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      context.read<ViewControlCubit>().chooseGrid();
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        color: state is ViewControlGrid
                            ? Colors.red[50]
                            : Colors.red,
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Grid View",
                          weight: FontWeight.w700,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
