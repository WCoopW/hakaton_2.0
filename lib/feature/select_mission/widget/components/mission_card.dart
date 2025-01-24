import 'package:flutter/material.dart';
import '../../model/dto.dart';

class MissionCard extends StatelessWidget {
  final MissionDto mission;
  final Function(String) onStatusUpdate;
  final Function(int) onTeamAssign;
  final bool isOrganizer;
  final bool isCommander;

  const MissionCard({
    super.key,
    required this.mission,
    required this.onStatusUpdate,
    required this.onTeamAssign,
    required this.isOrganizer,
    required this.isCommander,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mission.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              mission.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text(' ${mission.points} points'),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Status: ${mission.statusDisplay}',
              style: TextStyle(
                color: _getStatusColor(mission.status),
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isOrganizer) ...[
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () => _showStatusUpdateDialog(context),
                child: const Text('Update Status'),
              ),
            ],
            if (isCommander) ...[
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () => _showTeamAssignDialog(context),
                child: const Text('Assign Team'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'completed':
        return Colors.green;
      case 'in_progress':
        return Colors.blue;
      case 'pending':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  Future<void> _showStatusUpdateDialog(BuildContext context) async {
    final String? newStatus = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Update Status'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'pending'),
              child: const Text('Pending'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'in_progress'),
              child: const Text('In Progress'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'completed'),
              child: const Text('Completed'),
            ),
          ],
        );
      },
    );

    if (newStatus != null) {
      onStatusUpdate(newStatus);
    }
  }

  Future<void> _showTeamAssignDialog(BuildContext context) async {
    // Note: You'll need to implement team selection logic here
    // This is just a placeholder
    // You should fetch available teams and show them in a dialog
  }
}
