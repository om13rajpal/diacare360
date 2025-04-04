import 'package:shadcn_flutter/shadcn_flutter.dart';

class MealsCarousel extends StatefulWidget {
  const MealsCarousel({super.key});

  @override
  State<MealsCarousel> createState() => _MealsCarouselState();
}

class _MealsCarouselState extends State<MealsCarousel> {
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 150,
            child: Carousel(
              transition: const CarouselTransition.fading(),
              controller: controller,
              draggable: false,
              autoplaySpeed: const Duration(seconds: 1),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 800,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.gray,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                );
              },
              duration: const Duration(seconds: 1),
            ),
          ),
          const Gap(8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
                child: CarouselDotIndicator(
                  itemCount: 5,
                  controller: controller,
                ),
              ),
              const Spacer(),
              SizedBox(
                child: OutlineButton(
                  shape: ButtonShape.circle,
                  size: ButtonSize.xSmall,
                  onPressed: () {
                    controller.animatePrevious(
                      const Duration(milliseconds: 500),
                    );
                  },
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              const Gap(8),
              OutlineButton(
                size: ButtonSize.xSmall,
                shape: ButtonShape.circle,
                onPressed: () {
                  controller.animateNext(const Duration(milliseconds: 500));
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
