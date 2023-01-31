abstract class Dependencies {
  Dependencies() {
    initializeEnv();
    plantLogTrees();
  }

  Future<void> plantLogTrees();

  Future<void> initializeEnv();
}
