enum Conditions { baik, cukup_baik, kurang_baik }

extension PrettyEnum on Conditions {
  String get enumValue => this.toString().split('.').last.replaceAll("_", " ");
}
