import 'package:flutter/material.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/carousel_view_layout.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/column_layout.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/flow_layout.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/grid_view_layout.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/indexed_stack_layout.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/layout_builder.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/list_view_layout.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/row_layout.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/stack_layout.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/table_layout.dart';
import 'package:flutter_training/features/layout/screens/multi_child_layout/wrap_layout.dart';
import 'package:flutter_training/features/layout/screens/others/flutter_layout_demo.dart';
import 'package:flutter_training/features/layout/screens/others/pavlova.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/aspect_ratio_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/baseline_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/center_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/align_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/constrained_box_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/container_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/expanded_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/fitted_box_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/fractionally_sized_box_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/intrinsic_height_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/intrinsic_width_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/limited_box_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/offstage_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/overflow_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/padding_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/sized_box_layout.dart';
import 'package:flutter_training/features/layout/screens/single_child_layout/transform_layout.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Layouts";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: ListView(
          children: [
            // Single Child Layout
            const Text("Single-Child Layout Widget"),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CenterLayout())),
              child: const Text("Center", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AlignLayout())),
              child: const Text("Align", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AspectRatioLayout())),
              child: const Text("Aspect Ratio", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BaselineLayout())),
              child: const Text("Baseline", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ConstrainedBoxLayout())),
              child: const Text("ConstrainedBox", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ContainerLayout())),
              child: const Text("Container", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ExpandedLayout())),
              child: const Text("Expanded", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FittedBoxLayout())),
              child: const Text("FittedBox", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FractionallySizedBoxLayout())),
              child: const Text("FractionallySizedBox", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const IntrinsicHeightLayout())),
              child: const Text("IntrinsicHeight", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const IntrinsicWidthLayout())),
              child: const Text("IntrinsicWidth", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LimitedBoxLayout())),
              child: const Text("LimitedBox", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const OffstageLayout())),
              child: const Text("Offstage", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const OverflowLayout())),
              child: const Text("Overflow", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PaddingLayout())),
              child: const Text("Padding", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SizedBoxLayout())),
              child: const Text("SizedBox", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TransformLayout())),
              child: const Text("Transform", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 50),

            // Multi Child Layout
            const Text("Multi-Child Layout Widget"),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ColumnLayout())),
              child: const Text("Column", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const RowLayout())),
              child: const Text("Row", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const StackLayout())),
              child: const Text("Stack", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CarouselViewLayout())),
              child: const Text("CarouselView", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FlowLayout())),
              child: const Text("Flow", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const GridViewLayout())),
              child: const Text("GridView", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const IndexedStackLayout())),
              child: const Text("IndexedStack", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LayoutBuilderLayout())),
              child: const Text("LayoutBuilder", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ListViewLayout())),
              child: const Text("ListView", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TableLayout())),
              child: const Text("Table", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const WrapLayout())),
              child: const Text("Wrap", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 50),

            // Others Layout
            const Text("Others"),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Pavlova())),
              child: const Text("Pavlova - Nesting Rows and Columns", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FlutterLayoutDemo())),
              child: const Text("Flutter Layout Demo", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
