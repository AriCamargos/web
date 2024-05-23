import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web/repository/api_repository.dart';
import '../constants.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;
    return ElevatedButton.icon(
      onPressed: () => openWhatsApp(),
      label: Text(
        'Atendimento online'.toUpperCase(),
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: isMobile ? 12 : 20),
      ),
      icon: const FaIcon(
        FontAwesomeIcons.whatsapp,
        color: Colors.black,
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: isMobile ? kDefaultPaddingXs : kDefaultPaddingMd,
          horizontal: isMobile ? kDefaultPaddingXs : kDefaultPaddingMd * 2.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: const Color.fromARGB(255, 35, 180, 78),
      ),
    );
  }
}
