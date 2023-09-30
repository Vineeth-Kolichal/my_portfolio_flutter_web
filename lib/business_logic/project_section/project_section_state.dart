part of 'project_section_cubit.dart';

@freezed
class ProjectSectionState with _$ProjectSectionState {
  const factory ProjectSectionState({required List<ProjectModel> projectList}) = _Initial;
 factory ProjectSectionState.initial() => ProjectSectionState(projectList: []);
}
