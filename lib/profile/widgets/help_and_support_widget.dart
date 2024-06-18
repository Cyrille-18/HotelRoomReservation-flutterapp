import 'package:flutter/material.dart';

class HelpAndSupportWidget extends StatelessWidget {
  const HelpAndSupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
              child: Icon(
                Icons.help,
                size: 56,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Contact Support',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Email:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              children: [
                const Icon(Icons.mail, size: 24),
                const SizedBox(width: 8),
                Text(
                  'support@example.com',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Phone:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              children: [
                const Icon(Icons.call, size: 24),
                const SizedBox(width: 8),
                Text(
                  '+1 123-456-7890',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
