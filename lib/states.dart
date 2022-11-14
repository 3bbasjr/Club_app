

abstract class jeziraStates {}
class jeziraInitialState extends jeziraStates{}

class jeziraBottomState extends jeziraStates{}

class homeLoading extends jeziraStates{}
class homesuccess extends jeziraStates{}
class homeError extends jeziraStates{
  final String error;
  homeError(this.error);
}

class profileLoading extends jeziraStates{}
class profilessuccess extends jeziraStates{}
class profileError extends jeziraStates{
  final String error;
  profileError(this.error);
}

class newsLoading extends jeziraStates{}
class newssuccess extends jeziraStates{}
class newsError extends jeziraStates{
  final String error;
  newsError(this.error);
}

class settingLoading extends jeziraStates{}
class settingsuccess extends jeziraStates{}
class settingError extends jeziraStates{
  final String error;
  settingError(this.error);
}

