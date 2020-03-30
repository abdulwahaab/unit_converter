List<Map> weightUnits = [
  {"id": 1, "name": "Tonne", "unit": "tonne"},
  {"id": 2, "name": "Kilogram", "unit": "kg"},
  {"id": 3, "name": "Gram", "unit": "g"},
  {"id": 4, "name": "Milligram", "unit": "mg"},
  {"id": 5, "name": "Microgram", "unit": "microgram"},
  {"id": 6, "name": "Imperial Tonne", "unit": "imptonne"},
  {"id": 7, "name": "US Tonne", "unit": "ustonne"},
  {"id": 8, "name": "Stone", "unit": "stone"},
  {"id": 9, "name": "Pound", "unit": "pound"},
  {"id": 10, "name": "Ounce", "unit": "ounce"},
  {"id": 11, "name": "Hectogram", "unit": "hg"},
  {"id": 12, "name": "Decigram", "unit": "dg"},
  {"id": 13, "name": "Centigram", "unit": "cg"},
  {"id": 14, "name": "Carat", "unit": "carat"},
  {"id": 15, "name": "Grain", "unit": "grain"},
];

double convertWeightUnit(double unitValue, int unitFrom, int unitTo) {
  var result;
  if (unitFrom == 1)
    result = convertTonne(unitValue, unitTo);
  else if (unitFrom == 2)
    result = convertKilogram(unitValue, unitTo);
  else if (unitFrom == 3)
    result = convertGram(unitValue, unitTo);
  else if (unitFrom == 4)
    result = convertMilliGram(unitValue, unitTo);
  else if (unitFrom == 5)
    result = convertMicrogram(unitValue, unitTo);
  else if (unitFrom == 6)
    result = convertImperialTonne(unitValue, unitTo);
  else if (unitFrom == 7)
    result = convertUsTonne(unitValue, unitTo);
  else if (unitFrom == 8)
    result = convertStone(unitValue, unitTo);
  else if (unitFrom == 9)
    result = convertPound(unitValue, unitTo);
  else if (unitFrom == 10)
    result = convertOunce(unitValue, unitTo);
  else if (unitFrom == 11)
    result = convertHectogram(unitValue, unitTo);
  else if (unitFrom == 12)
    result = convertDecigram(unitValue, unitTo);
  else if (unitFrom == 13)
    result = convertCentigram(unitValue, unitTo);
  else if (unitFrom == 14)
    result = convertCarat(unitValue, unitTo);
  else if (unitFrom == 15)
    result = convertGrain(unitValue, unitTo);
  else
    result = null;
  return result;
}

double convertTonne(double unitValue, int unitTo) {
  if (unitTo == 1)
    return unitValue;
  else if (unitTo == 2)
    return unitValue * 1000;
  else if (unitTo == 3)
    return unitValue * 1e+6;
  else if (unitTo == 4)
    return unitValue * 1e+9;
  else if (unitTo == 5)
    return unitValue * 1e+12;
  else if (unitTo == 6)
    return unitValue / 1.016;
  else if (unitTo == 7)
    return unitValue * 1.10231;
  else if (unitTo == 8)
    return unitValue * 157.473;
  else if (unitTo == 9)
    return unitValue * 2204.623;
  else if (unitTo == 10)
    return unitValue * 35273.962;
  else if (unitTo == 11)
    return unitValue * 10000;
  else if (unitTo == 12)
    return unitValue * 1e+7;
  else if (unitTo == 13)
    return unitValue * 1e+8;
  else if (unitTo == 14)
    return unitValue * 5e+6;
  else if (unitTo == 15)
    return unitValue * 1.543e+7;
  else
    return null;
}

double convertKilogram(double unitValue, int unitTo) {
  if (unitTo == 1)
    return unitValue / 1000;
  else if (unitTo == 2)
    return unitValue;
  else if (unitTo == 3)
    return unitValue * 1000;
  else if (unitTo == 4)
    return unitValue * 1e+6;
  else if (unitTo == 5)
    return unitValue * 1e+9;
  else if (unitTo == 6)
    return unitValue / 1016.047;
  else if (unitTo == 7)
    return unitValue / 907.185;
  else if (unitTo == 8)
    return unitValue / 6.35;
  else if (unitTo == 9)
    return unitValue * 2.205;
  else if (unitTo == 10)
    return unitValue * 35.274;
  else if (unitTo == 11)
    return unitValue * 10;
  else if (unitTo == 12)
    return unitValue * 10000;
  else if (unitTo == 13)
    return unitValue * 100000;
  else if (unitTo == 14)
    return unitValue * 5000;
  else if (unitTo == 15)
    return unitValue * 15432.358;
  else
    return null;
}

double convertGram(double unitValue, int unitTo) {
  if (unitTo == 1)
    return unitValue / 1e+6;
  else if (unitTo == 2)
    return unitValue / 1000;
  else if (unitTo == 3)
    return unitValue;
  else if (unitTo == 4)
    return unitValue * 1000;
  else if (unitTo == 5)
    return unitValue * 1e+6;
  else if (unitTo == 6)
    return unitValue / 1.016e+6;
  else if (unitTo == 7)
    return unitValue / 907184.74;
  else if (unitTo == 8)
    return unitValue / 6350.293;
  else if (unitTo == 9)
    return unitValue / 453.592;
  else if (unitTo == 10)
    return unitValue / 28.35;
  else if (unitTo == 11)
    return unitValue / 100;
  else if (unitTo == 12)
    return unitValue * 10;
  else if (unitTo == 13)
    return unitValue * 100;
  else if (unitTo == 14)
    return unitValue * 5;
  else if (unitTo == 15)
    return unitValue * 15.4324;
  else
    return null;
}

double convertMilliGram(double unitValue, int unitTo) {
  if (unitTo == 1)
    return unitValue / 1e+9;
  else if (unitTo == 2)
    return unitValue / 1e+6;
  else if (unitTo == 3)
    return unitValue / 1000;
  else if (unitTo == 4)
    return unitValue;
  else if (unitTo == 5)
    return unitValue * 1000;
  else if (unitTo == 6)
    return unitValue / 1.016e+9;
  else if (unitTo == 7)
    return unitValue / 9.072e+8;
  else if (unitTo == 8)
    return unitValue / 6.35e+6;
  else if (unitTo == 9)
    return unitValue / 453592;
  else if (unitTo == 10)
    return unitValue / 28350;
  else if (unitTo == 11)
    return unitValue / 100000;
  else if (unitTo == 12)
    return unitValue / 100;
  else if (unitTo == 13)
    return unitValue / 10;
  else if (unitTo == 14)
    return unitValue / 200;
  else if (unitTo == 15)
    return unitValue / 64.799;
  else
    return null;
}

double convertMicrogram(double unitValue, int unitTo) {
  if (unitTo == 1)
    return unitValue / 1e+12;
  else if (unitTo == 2)
    return unitValue / 1e+9;
  else if (unitTo == 3)
    return unitValue / 1e+6;
  else if (unitTo == 4)
    return unitValue / 1000;
  else if (unitTo == 5)
    return unitValue;
  else if (unitTo == 6)
    return unitValue / 1.016e+12;
  else if (unitTo == 7)
    return unitValue / 9.072e+11;
  else if (unitTo == 8)
    return unitValue / 6.35e+9;
  else if (unitTo == 9)
    return unitValue / 4.536e+8;
  else if (unitTo == 10)
    return unitValue / 2.835e+7;
  else if (unitTo == 11)
    return unitValue / 1e+8;
  else if (unitTo == 12)
    return unitValue / 100000;
  else if (unitTo == 13)
    return unitValue / 10000;
  else if (unitTo == 14)
    return unitValue / 200000;
  else if (unitTo == 15)
    return unitValue / 64799;
  else
    return null;
}

double convertImperialTonne(double unitValue, int unitTo) {
  if (unitTo == 1)
    return unitValue * 1.016;
  else if (unitTo == 2)
    return unitValue * 1016;
  else if (unitTo == 3)
    return unitValue * 1.016e+6;
  else if (unitTo == 4)
    return unitValue * 1.016e+9;
  else if (unitTo == 5)
    return unitValue * 1.016e+12;
  else if (unitTo == 6)
    return unitValue;
  else if (unitTo == 7)
    return unitValue * 1.12;
  else if (unitTo == 8)
    return unitValue * 160;
  else if (unitTo == 9)
    return unitValue * 2240;
  else if (unitTo == 10)
    return unitValue * 35840;
  else if (unitTo == 11)
    return unitValue * 10160;
  else if (unitTo == 12)
    return unitValue * 1.016e+7;
  else if (unitTo == 13)
    return unitValue * 1.016e+8;
  else if (unitTo == 14)
    return unitValue * 5.08e+6;
  else if (unitTo == 15)
    return unitValue * 1.568e+7;
  else
    return null;
}

double convertUsTonne(double unitValue, int unitTo) {
  if (unitTo == 1)
    return unitValue / 1.102;
  else if (unitTo == 2)
    return unitValue * 907;
  else if (unitTo == 3)
    return unitValue * 907185;
  else if (unitTo == 4)
    return unitValue * 9.072e+8;
  else if (unitTo == 5)
    return unitValue * 9.072e+11;
  else if (unitTo == 6)
    return unitValue / 1.12;
  else if (unitTo == 7)
    return unitValue;
  else if (unitTo == 8)
    return unitValue * 143;
  else if (unitTo == 9)
    return unitValue * 2000;
  else if (unitTo == 10)
    return unitValue * 32000;
  else if (unitTo == 11)
    return unitValue * 9072;
  else if (unitTo == 12)
    return unitValue * 9.072e+6;
  else if (unitTo == 13)
    return unitValue * 9.072e+7;
  else if (unitTo == 14)
    return unitValue * 4.536e+6;
  else if (unitTo == 15)
    return unitValue * 1.4e+7;
  else
    return null;
}

double convertStone(double unitValue, int unitTo) {
  if (unitTo == 1)
    return unitValue / 157;
  else if (unitTo == 2)
    return unitValue * 6.35;
  else if (unitTo == 3)
    return unitValue * 6350;
  else if (unitTo == 4)
    return unitValue * 6.35e+6;
  else if (unitTo == 5)
    return unitValue * 6.35e+9;
  else if (unitTo == 6)
    return unitValue / 160;
  else if (unitTo == 7)
    return unitValue / 143;
  else if (unitTo == 8)
    return unitValue;
  else if (unitTo == 9)
    return unitValue * 14;
  else if (unitTo == 10)
    return unitValue * 224;
  else if (unitTo == 11)
    return unitValue * 63.503;
  else if (unitTo == 12)
    return unitValue * 63503;
  else if (unitTo == 13)
    return unitValue * 635029;
  else if (unitTo == 14)
    return unitValue * 31751;
  else if (unitTo == 15)
    return unitValue * 98000;
  else
    return null;
}

double convertPound(double unitValue, int unitTo) {
  if (unitTo == 1)
    return unitValue / 2205;
  else if (unitTo == 2)
    return unitValue / 2.205;
  else if (unitTo == 3)
    return unitValue * 454;
  else if (unitTo == 4)
    return unitValue * 453592;
  else if (unitTo == 5)
    return unitValue * 4.536e+8;
  else if (unitTo == 6)
    return unitValue / 2240;
  else if (unitTo == 7)
    return unitValue / 2000;
  else if (unitTo == 8)
    return unitValue / 14;
  else if (unitTo == 9)
    return unitValue;
  else if (unitTo == 10)
    return unitValue * 16;
  else if (unitTo == 11)
    return unitValue * 4.536;
  else if (unitTo == 12)
    return unitValue * 4536;
  else if (unitTo == 13)
    return unitValue * 45359;
  else if (unitTo == 14)
    return unitValue * 2268;
  else if (unitTo == 15)
    return unitValue * 7000;
  else
    return null;
}

double convertOunce(double unitValue, int unitTo) {
  return 0;
}

double convertHectogram(double unitValue, int unitTo) {
  return 0;
}

double convertDecigram(double unitValue, int unitTo) {
  return 0;
}

double convertCentigram(double unitValue, int unitTo) {
  return 0;
}

double convertCarat(double unitValue, int unitTo) {
  return 0;
}

double convertGrain(double unitValue, int unitTo) {
  return 0;
}
