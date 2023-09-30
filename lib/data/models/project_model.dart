class ProjectModel {
  final String projectName;
  final String description;
  final String image;
  final String gitHubLink;
  final String? downloadLink;

  ProjectModel(
      {required this.projectName,
      required this.description,
      required this.image,
      required this.gitHubLink,
      this.downloadLink});

  factory ProjectModel.fromMap(Map<String, dynamic> map) {
    return ProjectModel(
        projectName: map['projectName'],
        description:map ['description'],
        image:map ['image'],
        gitHubLink:map ['gitHubLink'],
        downloadLink: map['downloadLink']);
  }
  Map<String, dynamic> toMap() {
      return {
       "projectName":projectName,
       "description":description,
       "image":image,
       "gitHubLink":gitHubLink,
       "downloadLink":downloadLink
      };
    
  }
}
