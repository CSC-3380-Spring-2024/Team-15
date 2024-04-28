import 'package:flutter/material.dart';


void main() => runApp(const LocInputBar());

class LocInputBar extends StatefulWidget {
  const LocInputBar({Key? key}): super(key: key);

  @override
  State<LocInputBar> createState() => _LocInputBarState();
}

class _LocInputBarState extends State<LocInputBar> {
  bool isDark = false;


  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light);

    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(title: const Text('Enter location')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              controller: controller,
              padding: const MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16.0)),
              onTap: () {
                controller.openView();
              },
              onChanged: (_) {
                controller.openView();
              },
              leading: const Icon(Icons.search),
              trailing: <Widget>[
                Tooltip(
                  message: 'Change brightness mode',
                  child: IconButton(
                    isSelected: isDark,
                    onPressed: () {
                      setState(() {
                        isDark = !isDark;
                      });
                    },
                    icon: const Icon(Icons.wb_sunny_outlined),
                    selectedIcon: const Icon(Icons.brightness_2_outlined),
                  ),
                )
              ],
            );
          }, suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final String LocInput = 'Loc $index';
              return ListTile(
                title: Text(LocInput),
                onTap: () {
                  setState(() {
                    controller.closeView(LocInput);
                    return const String LocInput
                    
                  });
                },
              );
            });
          }),
        ),
      ),
    );
  }
}
