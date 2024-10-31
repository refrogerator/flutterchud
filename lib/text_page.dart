import 'package:flutter/material.dart';
import 'dart:math' as math;

class TextPage extends StatefulWidget {
    const TextPage({super.key});
    @override
    State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> with SingleTickerProviderStateMixin{
    late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 1))..repeat();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('joe mama was here'),
            ),
            body: Center(
                child: AnimatedBuilder(
                    animation: _controller,
                    builder: (_, child) {
                        return Transform.rotate(
                            angle: _controller.value * 2 * math.pi,
                            child: child,
                        );
                    },
                    child: Image.asset('assets/icon/icon.png'),
                ),
            ),
        );
    }
    
    @override
    void dispose() {
        _controller.dispose();
        super.dispose();
    }
}
