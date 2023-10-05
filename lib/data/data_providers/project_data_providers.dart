import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_portfolio_site/data/models/project_model.dart';

class ProjectDataProviders {
  static ProjectDataProviders projectDataProviders =
      ProjectDataProviders._internal();
  Future<List<ProjectModel>> getProjets() async {
    List<ProjectModel> projects = [];

    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('projects');
    final docs =
        await collectionReference.orderBy('date', descending: false).get();
    for (var i = 0; i < docs.docs.length; i++) {
      Map<String, dynamic> dataMap =
          docs.docs[i].data() as Map<String, dynamic>;
      projects.add(ProjectModel.fromMap(dataMap));
    }

   

    return projects;
  }

  factory ProjectDataProviders() {
    return projectDataProviders;
  }
  ProjectDataProviders._internal();
}

