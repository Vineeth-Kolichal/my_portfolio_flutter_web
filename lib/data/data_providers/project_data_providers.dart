import 'dart:developer';

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

    try {
      for (var i = 0; i < projectsMapList.length; i++) {
        Map<String, dynamic> dataMap = projectsMapList[i];
        projects.add(ProjectModel.fromMap(dataMap));
      }
    } catch (e) {
      log(e.toString());
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
    "projectName": "Trading Edge",
    "description":
        "Trading Edge is a trading journal app designed for stock market traders to track their stock market trading journey.",
    "image": "assets/images/trading_edge.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink": null
  },
  {
    "projectName": "ShiftSync",
    "description":
        "It is a collaborative project. The backend of this project was developed in Golang by a Golang developer. It consists of two applications: one for employees and one for employers.",
    "image": "assets/images/shift_sync.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/shiftsync-employee",
    "downloadLink": null
  },
  {
    "projectName": "Music Station",
    "description":
        "Music Station is a music player app that allows users to play songs stored in their local storage and provides lyrics for songs from the API.",
    "image": "assets/images/music_station.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/music_player",
    "downloadLink": null
  },
  {
    "projectName": "To-Do app",
    "description":
        "Simple todo app. Users can view add update delete todos. Bloc is used for managing state",
    "image": "assets/images/todo-app.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/todo-app",
    "downloadLink": null
  },
  {
    "projectName": "To-Do API",
    "description":
        "Todo API is developed with Node.js, Express, and mongoDB is used for storing data. JWT is used for autherize users",
    "image": "assets/images/todo_api.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/todo-api",
    "downloadLink": null
  },
  {
    "projectName": "Weather Today",
    "description":
        "Weather Today is a simple weather app that lets you see the weather for your current location or anywhere else in the world. Provider state management and MVVM architecture us used",
    "image": "assets/images/weather_map.png",
    "gitHubLink": "https://github.com/Vineeth-Kolichal/trading-edge",
    "downloadLink": null
  },
  {
    "projectName": "Image downloader",
    "description":
        "This application allows users to download images from URLs and save them to the Downloads folder on the device's storage. Bloc state management is used",
    "image": "assets/images/image_downloader.png",
    "gitHubLink":
        "https://github.com/Vineeth-Kolichal/Image-Download-from-URL-app",
    "downloadLink": null
  },
  {
    "projectName": "Income and Expence Tracker",
    "description":
        "This simple money management app allows users to track their income and expenses, which can help improve their personal finances",
    "image": "assets/images/income_expense.png",
    "gitHubLink":
        "https://github.com/Vineeth-Kolichal/Personal-Income-Expense-tracker",
    "downloadLink": null
  }
];
