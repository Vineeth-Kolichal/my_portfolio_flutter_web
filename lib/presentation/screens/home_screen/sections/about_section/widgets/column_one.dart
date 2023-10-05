import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_site/business_logic/export_cubit.dart';

import '../../../../../../util/constants.dart';
import '../../../../../widgets/export_widgets.dart';

class ColumnOne extends StatelessWidget {
  const ColumnOne({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return SizedBox(
          width: Responsive.isDestop(context)
              ? (constraints.maxWidth * 0.8) / 3.5
              : constraints.maxWidth * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedBoxWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Who am I ?',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                      yellowDivider,
                      Space.y(10),
                      Text(
                        state.whoAmI,
                        style: const TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),
                Space.y(30),
                ElevatedBoxWidget(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Skills',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    yellowDivider,
                    Space.y(10),
                    const Text('Expert-in',
                        style: TextStyle(fontSize: 20, color: Colors.yellow)),
                    Text(
                      state.expertIn,
                      style: const TextStyle(fontSize: 16, height: 1.7),
                    ),
                    Space.y(10),
                    const Text('Familiar-with',
                        style: TextStyle(fontSize: 20, color: Colors.yellow)),
                    Text(
                      state.familiarWith,
                      style: const TextStyle(fontSize: 16, height: 1.7),
                    ),
                  ],
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}

String skills =
    "Flutter, Dart, BloC, Provider, GetX, REST API Integration, Firebase, Hive, SQFLite, Git, GitHub, MVVM, MVC, BLoC Architecture";
String familiar =
    "Firebase FCM, Google map, HTML, CSS, JavaScript, Bootstrap, Java, Node js, Express js, MongoDB";
