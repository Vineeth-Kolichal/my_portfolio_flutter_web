import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_portfolio_site/data/models/project_model.dart';

class ProjectDataProviders {
  static ProjectDataProviders projectDataProviders =
      ProjectDataProviders._internal();
  Future<List<ProjectModel>> getProjets() async {
    List<ProjectModel> projects = [];

    // CollectionReference collectionReference =
    //     FirebaseFirestore.instance.collection('projects');
    // final docs = await collectionReference.get();
    // for (var i = 0; i < docs.docs.length; i++) {
    //   Map<String, dynamic> dataMap =
    //       docs.docs[i].data() as Map<String, dynamic>;
    //   projects.add(ProjectModel.fromMap(dataMap));
    // }
    for (var i = 0; i < projectsMapList.length; i++) {
      Map<String, dynamic> dataMap = projectsMapList[i];
      projects.add(ProjectModel.fromMap(dataMap));
    }
    return projects;
  }

  factory ProjectDataProviders() {
    return projectDataProviders;
  }
  ProjectDataProviders._internal();
}

List<Map<String, dynamic>> projectsMapList = [
  {
    "projectName": 'Trading Edge',
    "description":
        "Trading Edge is a trading journal app designed for stock market traders to track their stock market trading journey.",
    "image": "assets/images/trading_edge.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink":
        "https://drive.google.com/file/d/1mGNlio1c8F12Cpzck7DdOLcnDHiHE4wC/view?usp=drive_link"
  },
  {
    "projectName": 'ShiftSync',
    "description":
        "Trading Edge is a trading journal app designed for stock market traders to track their stock market trading journey.",
    "image": "assets/images/shift_sync.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink":
        "https://drive.google.com/file/d/1mGNlio1c8F12Cpzck7DdOLcnDHiHE4wC/view?usp=drive_link"
  },
  {
    "projectName": 'Music Station',
    "description":
        "Trading Edge is a trading journal app designed for stock market traders to track their stock market trading journey.",
    "image": "assets/images/music_station.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink":
        "https://drive.google.com/file/d/1mGNlio1c8F12Cpzck7DdOLcnDHiHE4wC/view?usp=drive_link"
  },
  {
    "projectName": 'To-Do app',
    "description":
        "Trading Edge is a trading journal app designed for stock market traders to track their stock market trading journey.",
    "image": "assets/images/todo-app.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink":
        "https://drive.google.com/file/d/1mGNlio1c8F12Cpzck7DdOLcnDHiHE4wC/view?usp=drive_link"
  },
  {
    "projectName": 'To-Do API',
    "description":
        "Trading Edge is a trading journal app designed for stock market traders to track their stock market trading journey.",
    "image": "assets/images/todo_api.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink": null
  },
  {
    "projectName": 'Weather Today',
    "description":
        "Trading Edge is a trading journal app designed for stock market traders to track their stock market trading journey.",
    "image": "assets/images/weather_map.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink":
        "https://drive.google.com/file/d/1mGNlio1c8F12Cpzck7DdOLcnDHiHE4wC/view?usp=drive_link"
  },
  {
    "projectName": 'Image downloader',
    "description":
        "Trading Edge is a trading journal app designed for stock market traders to track their stock market trading journey.",
    "image": "assets/images/image_downloader.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink":
        "https://drive.google.com/file/d/1mGNlio1c8F12Cpzck7DdOLcnDHiHE4wC/view?usp=drive_link"
  },
  {
    "projectName": 'Income and Expence Tracker',
    "description":
        "Trading Edge is a trading journal app designed for stock market traders to track their stock market trading journey.",
    "image": "assets/images/income_expense.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink":
        "https://drive.google.com/file/d/1mGNlio1c8F12Cpzck7DdOLcnDHiHE4wC/view?usp=drive_link"
  }
];
