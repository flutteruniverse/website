import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

/// Service to manage firebase functions
/// Firestore official doc: https://firebase.flutter.dev/docs/firestore/usage/
@Injectable()
class FirebaseService {
  FirebaseFirestore? _firestore;

  Future<FirebaseFirestore?> get firestore async {
    if (_firestore != null) return _firestore;
    await Firebase.initializeApp();
    _firestore = FirebaseFirestore.instance;
    return _firestore;
  }

  Future<CollectionReference<T>?> getCollection<T>({
    required String path,
    required T Function(Map<String, Object?>) dataToJson,
    required Map<String, dynamic> Function() dataFromJson,
  }) async {
    return (await firestore)!.collection(path).withConverter<T>(
          fromFirestore: (snapshot, _) => dataToJson(snapshot.data()!),
          toFirestore: (value, _) => dataFromJson(),
        );
  }

  Future<List<QueryDocumentSnapshot<T>>> getAllDocuments<T>({
    required String path,
    required Map<String, dynamic> Function() dataFromJson,
    required T Function(Map<String, dynamic>) dataToJson,
  }) async {
    final collection = await getCollection<T>(
      path: path,
      dataFromJson: dataFromJson,
      dataToJson: dataToJson,
    );
    final docs = await collection!.get();
    return await docs.docs;
  }

  Future<DocumentReference> addDocument<T>({
    required String path,
    required T data,
    required Map<String, dynamic> Function() dataFromJson,
    required T Function(Map<String, dynamic>) dataToJson,
  }) async {
    final collection = await getCollection<T>(
      path: path,
      dataFromJson: dataFromJson,
      dataToJson: dataToJson,
    );
    return collection!.add(data);
  }
}
