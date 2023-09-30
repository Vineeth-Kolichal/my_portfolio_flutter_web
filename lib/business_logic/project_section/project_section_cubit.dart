import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_portfolio_site/data/data_providers/project_data_providers.dart';

import '../../data/models/project_model.dart';

part 'project_section_state.dart';
part 'project_section_cubit.freezed.dart';

class ProjectSectionCubit extends Cubit<ProjectSectionState> {
  final ProjectDataProviders projectDataProviders = ProjectDataProviders();
  ProjectSectionCubit() : super(ProjectSectionState.initial());

  Future<void> getProjects() async {
    final projects = await projectDataProviders.getProjets();
    emit(state.copyWith(projectList: projects));
  }
}
