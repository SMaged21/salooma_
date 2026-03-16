import 'package:cloud_firestore/cloud_firestore.dart';

class ApiService {
  final db = FirebaseFirestore.instance;

  Future<QuerySnapshot> get(String collectionPath) {
    return db.collection(collectionPath).get();
  }
}
