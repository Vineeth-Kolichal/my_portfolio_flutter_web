import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_site/business_logic/export_cubit.dart';
import 'package:my_portfolio_site/data/models/project_model.dart';
import 'package:my_portfolio_site/presentation/widgets/export_widgets.dart';

import 'package:my_portfolio_site/util/constants.dart';
import 'package:my_portfolio_site/util/icons.dart';
import 'dart:html' as html;

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //  height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 15, 15, 15),
            Color.fromARGB(255, 0, 0, 0)
          ],
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return FractionallySizedBox(
              widthFactor: constraints.maxWidth >= 1024 ? 0.8 : 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Space.y(70),
                    const SectionTitle(title: 'Projects'),
                    Space.y(20),
                    BlocBuilder<ProjectSectionCubit, ProjectSectionState>(
                      builder: (context, state) {
                        return GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 0.8,
                          shrinkWrap: true,
                          crossAxisCount: Responsive.isDestop(context)
                              ? 4
                              : Responsive.isTabltet(context)
                                  ? 2
                                  : 1,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 20.0,
                          children:
                              List.generate(state.projectList.length, (index) {
                            return Center(
                              child: ProjectContainer(
                                projectModel: state.projectList[index],
                              ),
                            );
                          }),
                        );
                      },
                    ),
                    Space.y(70),
                  ],
                ),
              ));
        },
      ),
    );
  }
}

class ProjectContainer extends StatefulWidget {
  const ProjectContainer({
    super.key,
    required this.projectModel,
  });
  final ProjectModel projectModel;
  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      onTap: () {},
      child: Material(
        borderRadius: BorderRadius.circular(30),
        shadowColor: Colors.grey,
        elevation: isHover || !Responsive.isDestop(context) ? 10 : 0.0,
        child: AnimatedContainer(
          curve: Curves.fastEaseInToSlowEaseOut,
          duration: const Duration(milliseconds: 500),
          width: isHover ? 380 : 330,
          height: isHover || !Responsive.isDestop(context) ? 425 : 400,
          decoration: BoxDecoration(
            gradient: isHover
                ? null
                : const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 0, 0, 0),
                      Color.fromARGB(255, 15, 15, 15),
                    ],
                  ),
            color: !isHover ? null : Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.projectModel.projectName,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20, color: Colors.yellow),
                  ),
                  whiteDivider,
                  Space.y(20),
                  Container(
                    width: 260,
                    height: 140,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 54, 54, 54),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: widget.projectModel.image,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              strokeWidth: 2, value: downloadProgress.progress),
                        ),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.image_not_supported_outlined,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Space.y(10),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 280),
                    child: Text(
                      maxLines: 5,
                      "${widget.projectModel.description}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  Visibility(
                    // visible: isHover || !Responsive.isDestop(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleButton(
                            onTap: () {
                              html.window.open(
                                  '${widget.projectModel.gitHubLink}',
                                  "_blank");
                            },
                            icon: CustomIcons.github),
                        Visibility(
                            visible: (widget.projectModel.downloadLink) != null,
                            child: Space.x(20)),
                        Visibility(
                          visible: (widget.projectModel.downloadLink) != null,
                          child: CircleButton(
                              onTap: () {
                                html.window.open(
                                    '${widget.projectModel.downloadLink}',
                                    "_blank");
                              },
                              icon: Icons.download_outlined),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
