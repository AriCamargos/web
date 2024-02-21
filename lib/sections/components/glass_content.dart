import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants.dart';

class GlassContente extends StatelessWidget {
  const GlassContente({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Clínica estética especializada'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
              Text(
                'Especialista em Harmonização Orofacial',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black,
                    ),
              ),
              Text(
                'Creativite Design',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}