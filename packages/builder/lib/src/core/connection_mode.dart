enum ConnectionMode {
  /// The connection is live.
  /// Theta will fetch the component from the remote server
  /// at every app launch.
  /// 🧑‍🏫 This is the default connection mode.
  /// 🟡 It is recommended to use this mode during development.
  continuous,

  /// The connection is cached.
  /// Theta will fetch the component from the remote server
  /// only if the cache is expired.
  /// 🟢 Safe to use in production.
  cached,

  /// The connection is preloaded.
  /// Theta will retrieve the component from both a local file
  /// and the remote server each time the application is started.
  /// 💫 Immediate loading.
  /// 🟢 Safe to use in production.
  preloaded,
}
