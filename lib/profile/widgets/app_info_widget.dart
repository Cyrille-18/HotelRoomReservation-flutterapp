import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfoWidget extends StatelessWidget {
  const AppInfoWidget({super.key});

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
                Icons.info,
                size: 56,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'App info',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            FutureBuilder<PackageInfo>(
              future: PackageInfo.fromPlatform(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final packageInfo = snapshot.data;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'App Name: ${packageInfo?.appName}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'App ID: ${packageInfo?.packageName}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'App Version: ${packageInfo?.version}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'App Build Version: ${packageInfo?.buildNumber}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 16),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
