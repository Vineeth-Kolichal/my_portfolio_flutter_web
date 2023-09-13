import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_site/business_logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:my_portfolio_site/presentation/widgets/nav_bar_widget.dart';
import 'package:my_portfolio_site/presentation/widgets/space.dart';

class NavDesktop extends StatelessWidget {
  const NavDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return NavBarWidget(
          leading: Flexible(
            flex: 3,
            child: state.index != 0 ? NameInNavBar() : const SizedBox.shrink(),
          ),
          trailing: Expanded(
              flex: 2,
              child: SizedBox(
                height: 40,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return NavTextButton(
                        label: buttonLabels[index],
                        selected: state.index == index,
                        onPressed: () {
                          context.read<NavBarCubit>().selectSection(index);
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Space.x(40);
                    },
                    itemCount: buttonLabels.length),
              )),
        );
      },
    );
  }
}

class NameInNavBar extends StatefulWidget {
  const NameInNavBar({
    super.key,
  });

  @override
  State<NameInNavBar> createState() => _NameInNavBarState();
}

class _NameInNavBarState extends State<NameInNavBar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeOut,
      duration: Duration(milliseconds: 5000),
      child: Text('Vineeth Chandran'),
    );
  }
}

class NavTextButton extends StatefulWidget {
  const NavTextButton({
    super.key,
    required this.label,
    required this.selected,
    required this.onPressed,
  });
  final String label;
  final bool selected;
  final Function() onPressed;

  @override
  State<NavTextButton> createState() => _NavTextButtonState();
}

class _NavTextButtonState extends State<NavTextButton> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30)),
      onHover: (value) {
        setState(() {
          hover = value;
        });
      },
      onTap: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          widget.label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: hover
                ? Colors.red
                : widget.selected
                    ? Colors.white
                    : Colors.grey,
          ),
        ),
      ),
    );
  }
}

List<String> buttonLabels = ["Home", "About", "Portfolio", "Contact"];
