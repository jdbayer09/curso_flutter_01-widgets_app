import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('Elevated Button'),
            ),
            const ElevatedButton(
              onPressed: null, 
              child: Text('Elevated Disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon')
            ),
            FilledButton(
              onPressed: () {}, 
              child: const Text('Filled')
            ),
            FilledButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.accessibility_new_sharp),
              label: const Text('Filled Icon')
            ),
            OutlinedButton(
              onPressed: () {}, 
              child: const Text('Outline')
            ),
            OutlinedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.adb_rounded),
              label: const Text('Outline Icon')
            ),
            TextButton(
              onPressed: (){}, 
              child: const Text('Text Button')
            ),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.ad_units_outlined),
              label: const Text('Text Button Icon')
            ),
            const _CustomButton(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle_rounded)),
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.tab_unselected_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(color.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: color.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}