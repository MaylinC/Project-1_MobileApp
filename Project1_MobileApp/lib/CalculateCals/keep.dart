class Keep {
  static int numberOfTransactions = 0;
  static List<List<dynamic>> currentTransactions = [];

  static Future add(String name, String cals, String fat, String carbs, String pro, String gram, bool _isGain) async {
    numberOfTransactions++;
    currentTransactions.add([
      name,
      cals,
      fat,
      carbs,
      pro,
      gram,
      _isGain == true ? 'gain' : 'loss'
    ]);
  }

  static double caloriesLossAddition() {
    double allCals = 0;
    for (int i = 0; i < currentTransactions.length; i++){
      if (currentTransactions[i][6] == 'loss') {
        allCals += double.parse(currentTransactions[i][1]);
      }
    }
    return allCals;
  }

  static double calculateFat() {
    double allFat = 0;
    for (int i = 0; i < currentTransactions.length; i++){
      if (currentTransactions[i][6] == 'gain') {
        allFat += double.parse(currentTransactions[i][2]);
      }
    }
    return allFat;
  }

  static double calculateProtein() {
    double allPro = 0;
    for (int i = 0; i < currentTransactions.length; i++){
      if (currentTransactions[i][6] == 'gain') {
        allPro += double.parse(currentTransactions[i][4]);
      }
    }
    return allPro;
  }

  static double calculateCarbs() {
    double allPro = 0;
    for (int i = 0; i < currentTransactions.length; i++){
      if (currentTransactions[i][6] == 'gain') {
        allPro += double.parse(currentTransactions[i][3]);
      }
    }
    return allPro;
  }

  static double caloriesGainAddition() {
    double allCals = 0;
    for (int i = 0; i < currentTransactions.length; i++){
      if (currentTransactions[i][6] == 'gain') {
        allCals += double.parse(currentTransactions[i][1]);
      }
    }
    return allCals;
  }
}