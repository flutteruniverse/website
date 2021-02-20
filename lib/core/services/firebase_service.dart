import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

/// Service to manage firebase functions
/// Firestore official doc: https://firebase.flutter.dev/docs/firestore/usage/
@Injectable()
class FirebaseService {
  FirebaseFirestore _firestore;

  Future<FirebaseFirestore> get firestore async {
    if (_firestore != null) return _firestore;
    await Firebase.initializeApp();
    _firestore = FirebaseFirestore.instance;
    return _firestore;
  }

  Future<CollectionReference> getCollection(String path) async {
    return (await firestore).collection(path);
  }

  Future<List<QueryDocumentSnapshot>> getAllDocuments(String path) async {
    return (await (await getCollection(path)).get()).docs;
  }

  Future<DocumentReference> addDocument(
      String path, Map<String, String> data) async {
    return (await getCollection(path)).add(data);
  }
}
