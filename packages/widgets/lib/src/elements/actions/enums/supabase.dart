// ignore_for_file: public_member_api_docs

enum ActionSupabaseAuth {
  signInWithCredential,
  signUp,
  signInWithApple,
  signInWithAzure,
  signInWithBitbucket,
  signInWithDiscord,
  signInWithFacebook,
  signInWithGitHub,
  signInWithGitLab,
  signInWithGoogle,
  //signInWithLinkedin,
  //signInWithNotion,
  signInWithTwitch,
  signInWithTwitter,
  signInWithSlack,
  signInWithSpotify,
  //signInWithWorkOS,
  //signInWithZoom,
}

enum ActionSupabaseDB {
  insert,
  update,
  delete,
}

enum ActionSupabaseStorage { upload, remove }

enum ActionSupabaseFunctions {
  invoke,
}
