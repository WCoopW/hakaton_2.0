enum UserRole {
  organizer,
  commander,
  teamMember;

  factory UserRole.fromString(String role) {
    switch (role.toLowerCase()) {
      case 'organizer':
        return UserRole.organizer;
      case 'commander':
        return UserRole.commander;
      default:
        return UserRole.teamMember;
    }
  }
}
