import 'package:flutter/material.dart';
import 'package:web/components/whatsapp_button_soft.dart';
import 'package:web/constants.dart';
import 'package:web/models/service.dart';
import 'package:web/sections/components/main_title.dart';
import 'components/benefits_component.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final response = Responsive(context);
    return Container(
      color: const Color(0xFF18191B),
      constraints: const BoxConstraints(maxWidth: double.maxFinite),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 300),
        child: Column(
          children: [
            const MainTitle(
              title: 'Benefícios dos tratamentos',
              subtitle: '''Resgate sua jovialidade com '''
                  '''uma aparência rejuvenescida que reflete sua verdadeira essência''',
            ),
            const SizedBox(height: 20),
            response.value({
              /* Breakpoints.xs: Column(
                children: services
                    .map(
                      (service) => Column(
                        children: [
                          Container(
                            height: 95,
                            width: 95,
                            decoration: BoxDecoration(
                              color: kColorGold,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 20),
                                  blurRadius: 100,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              service.image,
                              filterQuality: FilterQuality.none,
                              height: 100,
                              width: 100,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            service.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            service.subtitle,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    )
                    .toList(),
              ),*/
              /* Breakpoints.md: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 20,
                runSpacing: 20,
                children: List.generate(
                  services.length,
                  (index) => BenefitsComponent(index: index),
                ),
              ),*/
              Breakpoints.lg: SizedBox(
                height: 600,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: services.length,
                  itemBuilder: (context, index) => BenefitsComponent(
                    index: index,
                    title: services[index].title,
                    subtitle: services[index].subtitle,
                    image: services[index].image,
                  ),
                ),
              ),
            }),
            const SizedBox(height: kDefaultPaddingMd * 2),
            const WhatsappButtonSoft(),
          ],
        ),
      ),
    );
  }
}
