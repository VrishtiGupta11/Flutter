class OneWay {
  String? from;
  String? to;
  String? departure;

  OneWay({this.from, this.to, this.departure});

  @override
  String toString() {
    // TODO: implement toString
    return {"from": from, "to": to, "departure": departure}.toString();
  }
}

class RoundTrip extends OneWay {
  String? Return;

  RoundTrip({this.Return, from, to, departure})
      : super(from: from, to: to, departure: departure);

  @override
  String toString() {
    // TODO: implement toString
    return (super.toString() + {"return": Return}.toString());
  }
}

class MultiCity extends OneWay {
  int? noOfTrips;

  MultiCity({this.noOfTrips, from, to, departure})
      : super(from: from, to: to, departure: departure);

  @override
  String toString() {
    // TODO: implement toString
    return (super.toString() + {'noOfTrips': noOfTrips}.toString());
  }
}

void main() {
  print("\n---ONE WAY---");
  print(OneWay(from: 'Chandigarh', to: 'Delhi', departure: '30 July, 2021'));

  print("\n---Round Trip---");
  print(RoundTrip(
      from: 'Delhi',
      to: 'Bangalore',
      departure: '28 July, 2021',
      Return: 'Delhi'));

  print("\n---MULTI CITY---");
  print(MultiCity(
      from: 'Delhi',
      to: 'Bangalore',
      departure: '28 July, 2021',
      noOfTrips: 1));
}
