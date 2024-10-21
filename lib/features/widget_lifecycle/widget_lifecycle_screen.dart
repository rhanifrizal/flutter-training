import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}

class WidgetLifecycleScreen extends StatefulWidget {
  const WidgetLifecycleScreen({super.key});

  @override
  State<WidgetLifecycleScreen> createState() => _WidgetLifecycleScreenState();
}

class _WidgetLifecycleScreenState extends State<WidgetLifecycleScreen> {
  int _counter = 0;

  /// Widget Lifecycle Flow
  /// 1. Widget Created (Constructor is called)
  /// 2. State Created (initState() is called)
  /// 3. Dependencies Established (didChangeDependencies() is called)
  /// 4. Widget Rendered (build() is called)
  /// 5. State Updated (setState() triggers build() again)
  /// 6. Dependencies Change (didChangeDependencies() is called again()
  /// 7. Widget Destroyed (dispose() is called)

  @override
  void initState() {
    /// initState
    /// Only called during push
    /// Purpose: Called once when the state object is created. This is where
    ///          you initialize data, start any animation, or set up listeners.
    /// When to use: Use to perform one-time operations, such as setting up
    ///              controllers, fetching initial data, or subscribing streams.
    super.initState();
    debugPrint('Widget initialized!');
  }

  @override
  void didChangeDependencies() {
    /// didChangeDependencies
    /// like initState but, initState get called before didChangeDependencies
    /// when to access context, use in didChangeDependencies
    /// Purpose: Called when the widget's dependencies change. For example, if a
    ///          widget is dependent on InheritedWidget, this method is called
    ///          when that dependency updates.
    /// When to use: Use it if you need to update the widget in response to
    ///              changes in external dependencies, such as InheritedWidget
    ///              or Provider.
    /// Note: This can be called multiple times, so it's important to check
    ///       whether the update impacts your widget's state.
    super.didChangeDependencies();
    _counter = Provider.of<CounterModel>(context).counter;
    debugPrint('Dependencies changed!');
  }

  // @override
  // void didUpdateWidget(covariant WidgetLifecycleScreen oldWidget) {
  //   /// didUpdateWidget
  //   /// Purpose: Called when the widget's configuration changes but the state
  //   ///          remains the same. For example, when a parent widget passes
  //   ///          new data to a child stateful widget, but the stateful widget
  //   ///          itself isn't destroyed and recreated.
  //   /// When to use: Use it when you need to update the state of the widget
  //   ///              based on new data or properties passed down from a parent
  //   ///              widget.
  //   super.didUpdateWidget(oldWidget);
  //   if(oldWidget.counter != widget.counter) {
  //     setState(() {
  //       _counter = widget.counter;
  //     });
  //   }
  //   debugPrint('DidUpdateWidget!');
  // }

  // @override
  // void deactivate() {
  //   /// deactivate
  //   /// Purpose: Called when a widget is temporarily removed from the widget
  //   ///          tree, either because it will be reinserted elsewhere or its
  //   ///          position is being changed.
  //   /// When to use: Use it when you need to handle tasks like temporarily cleaning
  //   ///              up resources (removing listeners or timers) but where the
  //   ///              widget might get added back to the tree later.
  //   super.deactivate();
  //   debugPrint('Widget deactivate!');
  // }

  @override
  void dispose() {
    /// dispose
    /// Purpose: called when the widget is permanently removed from the widget
    ///          tree. This is where to release resources, such as closing
    ///          streams, controllers, or unsubscribing from listeners.
    /// When to use: Use it to clean up resources and prevent memory leaks when
    ///              the widget is no longer needed.
    super.dispose();
    debugPrint('Widget disposed!');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Widget build!');
    /// build
    /// Purpose: Called every time the widget is rebuild (setState) is called.
    ///          It is responsible for rendering the UI.
    /// When to use: It contains the UI layout of the widget and is called
    ///              frequently, so avoid placing any side effects (such as
    ///              API calls, subscriptions) here.
    const title = "Widget Lifecycle";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter value: $_counter',
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<CounterModel>(context, listen: false).increment();
              },
              child: const Text(
                'Increment Counter',
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (_) => const WidgetLifecycleScreen2(),
            //       ),
            //     );
            //   },
            //   child: const Text(
            //     'Navigate to another screen (deactivate)',
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(
            //         builder: (_) => WidgetLifecycleScreen(counter: _counter + 1),
            //       ),
            //     );
            //   },
            //   child: const Text(
            //     'Update Widget (didUpdateWidget)',
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
