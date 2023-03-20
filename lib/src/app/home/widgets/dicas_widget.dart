import 'package:calendario_de_corridas/src/components/container_padrao.dart';
import 'package:calendario_de_corridas/src/components/titulos_xgrande.dart';
import 'package:calendario_de_corridas/src/shared/colors/app_colors.dart';
import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DicasWidget extends StatefulWidget {
  const DicasWidget({super.key});

  @override
  State<DicasWidget> createState() => _DicasWidgetState();
}

class _DicasWidgetState extends State<DicasWidget> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitulosXGrande(text: 'DICAS'),
        CarouselSlider.builder(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.3,
            viewportFraction: 1,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          itemCount: 3,
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: ContainerPadrao(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Assuntos sobre corrida, podcasts, instagram, twitter, etc.',
                      style: TextStyles.textoGrande(),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      child: Image.asset(
                        'assets/imagens/imagem_base.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 2),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: 3,
          effect: JumpingDotEffect(
            dotHeight: 10,
            activeDotColor: AppColors.basicColors.black,
            dotColor: AppColors.basicColors.grey,
          ),
        ),
      ],
    );
  }
}
