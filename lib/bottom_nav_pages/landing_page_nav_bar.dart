
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_data_controller.dart';

class LandingPageNavBar extends StatefulWidget {
  const LandingPageNavBar({super.key});

  @override
  State<LandingPageNavBar> createState() => _LandingPageNavBarState();
}

class _LandingPageNavBarState extends State<LandingPageNavBar> {
  AppDataController appDataController = Get.find();

  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
  }

   _onItemTapped(int index) {
      selectedIndex = index;
      appDataController.update(['bottom_nav_bar']);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
      bottomNavigationBar: GetBuilder<AppDataController>(
        id: 'bottom_nav_bar',
          builder: (context) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_outlined),
                activeIcon: Icon(Icons.add),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                activeIcon: Icon(Icons.person),
                label: 'Profile',
              ), BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                activeIcon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                activeIcon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
          );
        }
      ),
    );
  }
}


class MacosDock<T extends Object> extends StatefulWidget {
  const MacosDock({
    super.key,
    this.items = const [],
    required this.builder,
  });

  final List<T> items;
  final Widget Function(T item, double scale) builder;

  @override
  State<MacosDock<T>> createState() => MacosDockState<T>();
}

class MacosDockState<T extends Object> extends State<MacosDock<T>> {
  late final List<T> _items = widget.items.toList();
  int? _hoveredIndex;
  int? _draggedIndex;

  double calculateValue({
    required int index,
    required double initialValue,
    required double maxValue,
    required double nonHoveredMaxValue,
  }) {
    late final double finalValue;

    if (_hoveredIndex == null) {
      return initialValue;
    }

    final distance = (_hoveredIndex! - index).abs();

    final itemsAffected = _items.length;

    if (distance == 0) {
      finalValue = maxValue;
    } else if (distance == 1) {
      finalValue = lerpDouble(initialValue, maxValue, 0.5)!;
    } else if (distance == 2) {
      finalValue = lerpDouble(initialValue, maxValue, 0.25)!;
    } else if (distance < 3 && distance <= itemsAffected) {
      finalValue = lerpDouble(initialValue, nonHoveredMaxValue, .15)!;
    } else {
      finalValue = initialValue;
    }
    return finalValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black26,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: _items.asMap().entries.map((entry) {
          final index = entry.key;
          final item = entry.value;

          final calculatedSized = calculateValue(
            index: index,
            initialValue: 68,
            maxValue: 80,
            nonHoveredMaxValue: 48,
          );

          return DragTarget<T>(
            onAcceptWithDetails: (droppedItem) {
              setState(() {
                final draggedIndex = _items.indexOf(droppedItem.data);
                if (draggedIndex != -1) {
                  _items.removeAt(draggedIndex);
                  _items.insert(index, droppedItem.data);
                }
                _draggedIndex = null;
              });
            },
            onWillAcceptWithDetails: (droppedItem) {
              final draggedIndex = _items.indexOf(droppedItem.data);
              setState(() {
                _hoveredIndex = index;
                _draggedIndex = draggedIndex;
              });
              return true;
            },
            onLeave: (_) {
              setState(() {
                _hoveredIndex = null;
                _draggedIndex = null;
              });
            },
            builder: (context, candidateData, rejectedData) {
              return Draggable<T>(
                data: item,
                feedback: Material(
                  color: Colors.transparent,
                  child: Transform.scale(
                    scale: 1.3,
                    child: widget.builder(item, calculatedSized / 68),
                  ),
                ),
                childWhenDragging: const PlaceholderWidget(),
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _hoveredIndex = index;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _hoveredIndex = null;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Durations.short3,
                    transform: Matrix4.identity()
                      ..translate(
                        0.0,
                        calculateValue(
                          index: index,
                          initialValue: 0,
                          maxValue: -15,
                          nonHoveredMaxValue: -4,
                        ),
                        0.0,
                      ),
                    margin: EdgeInsets.only(
                      left: _draggedIndex != null
                          ? _hoveredIndex == index
                          ? 68
                          : 0
                          : 0,
                      right: _draggedIndex != null
                          ? _hoveredIndex == index && index == _items.length - 1
                          ? 30
                          : 0
                          : 0,
                    ),
                    constraints: BoxConstraints(
                      minWidth: 48,
                      maxWidth: calculatedSized,
                      maxHeight: calculatedSized,
                    ),
                    child: widget.builder(item, calculatedSized / 68),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}





class PlaceholderWidget extends StatefulWidget {
  const PlaceholderWidget({super.key});

  @override
  State<PlaceholderWidget> createState() => _PlaceholderWidgetState();
}

class _PlaceholderWidgetState extends State<PlaceholderWidget> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Durations.medium2,
      tween: Tween<double>(begin: 48, end: 0),
      builder: (BuildContext context, double value, Widget? child) {
        return SizedBox(
          width: value,
          height: value,
        );
      },
    );
  }
}