void main() {
  print("\n\t\t\t\t\t----------------");
  print("\t\t\t\t\t Covid-19 Cases");
  print("\t\t\t\t\t----------------\n");

  // var State = ['Confirmed', 'Active', 'Recovered', 'Deceased'];

  var Maharashtra = Map<String, int>();
  Maharashtra['Confirmed'] = 1234;
  Maharashtra['Active'] = 2345;
  Maharashtra['Recovered'] = 2343;
  Maharashtra['Deceased'] = 5736;

  var Kerala = Map<String, int>();
  Kerala['Confirmed'] = 7677;
  Kerala['Active'] = 7654;
  Kerala['Recovered'] = 6777;
  Kerala['Deceased'] = 5654;

  var Karnataka = Map<String, int>();
  Karnataka['Confirmed'] = 9898;
  Karnataka['Active'] = 5765;
  Karnataka['Recovered'] = 5665;
  Karnataka['Deceased'] = 4554;

  var Tamil_Nadu = Map<String, int>();
  Tamil_Nadu['Confirmed'] = 8785;
  Tamil_Nadu['Active'] = 5467;
  Tamil_Nadu['Recovered'] = 5454;
  Tamil_Nadu['Deceased'] = 2345;

  var Punjab = Map<String, int>();
  Punjab['Confirmed'] = 4546;
  Punjab['Active'] = 2354;
  Punjab['Recovered'] = 9887;
  Punjab['Deceased'] = 4554;

  var Delhi = Map<String, int>();
  Delhi['Confirmed'] = 4254;
  Delhi['Active'] = 8762;
  Delhi['Recovered'] = 3563;
  Delhi['Deceased'] = 5363;

  // Map of Maps

  var states = {
    // 'State/UT': State,
    'Maharashtra': Maharashtra,
    'Kerala': Kerala,
    'Karnataka': Karnataka,
    'Tamil_Nadu': Tamil_Nadu,
    'Punjab': Punjab,
    'Delhi': Delhi
  };
  // print(states);
  List key = states.keys.toList();
  List value = states.values.toList();
  for (int i = 0; i < states.length; i++) {
    print("${key[i]} \t\t ${value[i]} \n");
  }

  for (int i = 0; i < states.length; i++) {
    for (int j = 0; j < states.length; j++) {
      if (value[i]['Active'] < value[j]['Active']) {
        var temp1 = value[i]['Active'];
        value[i]['Active'] = value[j]['Active'];
        value[j]['Active'] = temp1;

        var temp2 = value[i]['Confirmed'];
        value[i]['Confirmed'] = value[j]['Confirmed'];
        value[j]['Confirmed'] = temp2;

        var temp3 = value[i]['Recovered'];
        value[i]['Recovered'] = value[j]['Recovered'];
        value[j]['Recovered'] = temp3;

        var temp4 = value[i]['Deceased'];
        value[i]['Deceased'] = value[j]['Deceased'];
        value[j]['Deceased'] = temp4;

        var temp5 = key[i];
        key[i] = key[j];
        key[j] = temp5;
      }
    }
  }
  print("\n\t\t\t --------------------------------------------");
  print("\t\t\t  States Sorted on the basis of Active Cases");
  print("\t\t\t --------------------------------------------\n");
  for (int i = 0; i < states.length; i++) {
    // print(value[i]);
    print("${key[i]} \t\t ${value[i]} \n");
  }
}

/*
Output: 

                                        ----------------
                                         Covid-19 Cases
                                        ----------------

Maharashtra              {Confirmed: 1234, Active: 2345, Recovered: 2343, Deceased: 5736}

Kerala           {Confirmed: 7677, Active: 7654, Recovered: 6777, Deceased: 5654}

Karnataka                {Confirmed: 9898, Active: 5765, Recovered: 5665, Deceased: 4554}

Tamil_Nadu               {Confirmed: 8785, Active: 5467, Recovered: 5454, Deceased: 2345}

Punjab           {Confirmed: 4546, Active: 2354, Recovered: 9887, Deceased: 4554}

Delhi            {Confirmed: 4254, Active: 8762, Recovered: 3563, Deceased: 5363}


                         --------------------------------------------
                          States Sorted on the basis of Active Cases
                         --------------------------------------------

Maharashtra              {Confirmed: 1234, Active: 2345, Recovered: 2343, Deceased: 5736}

Punjab           {Confirmed: 4546, Active: 2354, Recovered: 9887, Deceased: 4554}

Tamil_Nadu               {Confirmed: 8785, Active: 5467, Recovered: 5454, Deceased: 2345}

Karnataka                {Confirmed: 9898, Active: 5765, Recovered: 5665, Deceased: 4554}

Kerala           {Confirmed: 7677, Active: 7654, Recovered: 6777, Deceased: 5654}

Delhi            {Confirmed: 4254, Active: 8762, Recovered: 3563, Deceased: 5363}
*/
