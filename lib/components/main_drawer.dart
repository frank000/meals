import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(
      IconData icon, String label, BuildContext context, String routeName) {
    return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          label,
          style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        onTap: () {
          Navigator.of(context).pushReplacementNamed(routeName);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Vamos Cozinhar?',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _createItem(
            Icons.restaurant,
            'Refeições',
            context,
            AppRoutes.HOME,
          ),
          _createItem(
            Icons.settings,
            'Configurações',
            context,
            AppRoutes.SETTINGS,
          ),
        ],
      ),
    );
  }
}
