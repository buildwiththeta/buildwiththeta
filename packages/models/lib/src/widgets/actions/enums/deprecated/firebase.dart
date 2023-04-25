/// Action used with Firebase Auth
// ignore_for_file: public_member_api_docs

enum ActionFirebase {
  firebaseLoginWithEmailAndPassword,
  firebaseSignInWithEmailAndPassword,
  firebaseGoogleLogIn,
  firebaseAppleLogIn,
  firebaseFacebookLogIn,
  firebaseTwitterLogin,
  firebaseGitHubLogin,
}

enum ActionFirebaseFirestore {
  set,
}

enum ActionFirebaseStorage {
  upload,
}
