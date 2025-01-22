class CustomIcon {
  final String name;
  final String icon;

  CustomIcon({
    required this.name,
    required this.icon,
  });
}
List<CustomIcon> customIcons = [
  CustomIcon(name: "Appointment", icon: 'assets/appointment.png'),
  CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
  CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
  CustomIcon(name: "More", icon: 'assets/more.png'),
];
List<CustomIcon> healthNeeds = [
  CustomIcon(name: "Appointment", icon: 'assets/appointment.png'),
  CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
  CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
  CustomIcon(name: "Pharmacy", icon: 'assets/drug.png'),
];
List<CustomIcon> specialisedCared = [
  CustomIcon(name: "Diabetes", icon: 'assets/blood.png'),
  CustomIcon(name: "Health Care", icon: 'assets/health_care.png'),
  CustomIcon(name: "Dental", icon: 'assets/tooth.png'),
  CustomIcon(name: "Insured", icon: 'assets/insurance.png'),
];
