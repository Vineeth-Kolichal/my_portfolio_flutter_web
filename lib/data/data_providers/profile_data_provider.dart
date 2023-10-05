import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileDataProviders {
  static ProfileDataProviders profileDataProviders =
      ProfileDataProviders._internal();
  Future<Map<String, dynamic>> getProfileData() async {
    Map<String, dynamic> profileData = {};
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('profile');
    await collectionReference.doc('vineeth').get().then((docRef) {
      profileData = docRef.data() as Map<String, dynamic>;
    });

    return profileData;
  }

  factory ProfileDataProviders() {
    return profileDataProviders;
  }
  ProfileDataProviders._internal();
}
