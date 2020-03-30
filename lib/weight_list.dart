import 'package:flutter/material.dart';
import 'package:unit_converter/data_lists/weight_units.dart';

class WeightList extends StatefulWidget {
  @override
  State createState() => new WeightListState();
}

class WeightListState extends State<WeightList> {
  TextEditingController editingController = TextEditingController();
  var duplicateItems = weightUnits;
  var items = List<Map>();

  @override
  Widget build(BuildContext context) {
    final title = 'Weight Unit From';
    return new Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value.toLowerCase());
                },
                controller: editingController,
                decoration: InputDecoration(
                  // labelText: "Search",
                  hintText: "Search",
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: ListTile(
                      title: Text('${items[index]['name']}'),
                    ),
                    onTap: () {
                      Navigator.pop(context, items[index]['id']);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<Map> dummySearchList = List<Map>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<Map> dummyListData = List<Map>();
      dummySearchList.forEach(
        (item) {
          if (item['name'].toLowerCase().contains(query)) {
            dummyListData.add(item);
          }
        },
      );
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(
        () {
          items.clear();
          items.addAll(duplicateItems);
        },
      );
    }
  }
}
