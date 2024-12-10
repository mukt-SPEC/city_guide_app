import 'package:flutter/material.dart';

import '../core/textstyle.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFFF1F1F1),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 72,
                constraints: const BoxConstraints(minWidth: 72),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromARGB(255, 180, 176, 176)),
                child: const Icon(Icons.timelapse),
              ),
              const SizedBox(width: 12),
              Text(
                'History of kano',
                style: kTextStyle(16),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios_rounded)
        ],
      ),
    );
  }
}
