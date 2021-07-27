// https://www.makemytrip.com/flights/?cmp=SEM|D|DF|G|Generic|DF_Generic_Exact|Airfare_Exact|RSA|Offer4|529579610094&s_kwcid=AL!1631!3!529579610094!e!!g!!air%20trip&ef_id=Cj0KCQjw3f6HBhDHARIsAD_i3D8c-SRIyCw3-HVkhS0uXhKuYyWTyRu3kcmxD94pNoIB3lcR5kbnFu4aArb0EALw_wcB:G:s&gclid=Cj0KCQjw3f6HBhDHARIsAD_i3D8c-SRIyCw3-HVkhS0uXhKuYyWTyRu3kcmxD94pNoIB3lcR5kbnFu4aArb0EALw_wcB

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

// class MultiCity extends OneWay {
//   int? noOfTrips;

//   MultiCity({this.noOfTrips, from, to, departure})
//       : super(from: from, to: to, departure: departure);

//   @override
//   String toString() {
//     // TODO: implement toString
//     return (super.toString() + {'noOfTrips': noOfTrips}.toString());
//   }
// }

class MultiCity {
  int? noOfTrips;
  List<OneWay>? oneWay;

  MultiCity({this.noOfTrips, this.oneWay}) {
    print("No Of Trips: ${noOfTrips}\n");
    oneWay!.forEach((element) {
      print(
          "from: ${element.from}, to: ${element.to}, departure: ${element.departure}");
    });
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
  MultiCity(noOfTrips: 3, oneWay: [
    OneWay(from: 'A', to: 'B', departure: '30 July, 2021'),
    OneWay(from: 'B', to: 'C', departure: '30 July, 2021'),
    OneWay(from: 'C', to: 'D', departure: '31 July, 2021')
  ]);
}
