import 'package:cloud_firestore/cloud_firestore.dart';

class ApiService {
  final FirebaseFirestore firestore;

  ApiService({required this.firestore});

  Future<QuerySnapshot> get(String collectionPath) async {
    var response = await firestore.collection(collectionPath).get();
    return response;
  }
}
