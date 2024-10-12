enum NewsType {
  all,
  business,
  entertainment,
  general,
  health,
  science,
  sports,
  technology;
}

extension StringValue on NewsType {
  String get stringValue {
    switch (this) {
      case NewsType.all:
        return 'All';
      case NewsType.business:
        return 'Business';
      case NewsType.entertainment:
        return 'Entertainment';
      case NewsType.general:
        return 'General';
      case NewsType.health:
        return 'Health';
      case NewsType.science:
        return 'Science';
      case NewsType.sports:
        return 'Sports';
      case NewsType.technology:
        return 'Technology';
    }
  }
}
