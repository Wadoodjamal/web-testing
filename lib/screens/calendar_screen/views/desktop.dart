part of '../calendar_screen.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          fillOverscroll: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: UIProps.boxCard!.copyWith(color: Colors.white),
                padding: EdgeInsets.all(
                  AppDimensions.normalize(5),
                ),
                height: AppDimensions.normalize(170),
                margin: Space.hf(50),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wiqar Chauhdary',
                                style: AppText.b4bm.copyWith(
                                  color: Colors.grey[600],
                                ),
                              ),
                              Space.y,
                              Text(
                                '15-minute-sync',
                                style: AppText.h6b.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              Space.y1,
                              Row(
                                children: [
                                  Icon(
                                    Icons.lock_clock,
                                    size: AppDimensions.normalize(6),
                                    color: Colors.black54,
                                  ),
                                  Space.x,
                                  Text(
                                    '15 min',
                                    style: AppText.b4bm.cl(
                                      Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              Space.y1,
                              Row(
                                children: [
                                  Icon(
                                    Icons.video_call,
                                    size: AppDimensions.normalize(6),
                                    color: Colors.black54,
                                  ),
                                  Space.x,
                                  Text(
                                    'Web conferencing details provided upon confirmation.',
                                    style: AppText.b4bm.cl(
                                      Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              Space.y2,
                              Text(
                                'Quick Chat',
                                style: AppText.b4bm.copyWith(
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              locator<AppNavigation>()
                                  .navigateTo(AppRoutes.meetingDetails);
                            },
                            child: Text(
                              'Cookie Settings',
                              style: AppText.b4.copyWith(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      thickness: AppDimensions.normalize(1),
                      color: Colors.grey[300],
                    ),
                    Space.x,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select a Date & Time',
                            style: AppText.h6b.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          Space.y1,
                          TableCalendar(
                            focusedDay: DateTime.now(),
                            firstDay: DateTime(1990, 1, 1),
                            lastDay: DateTime(
                              DateTime.now().year + 100,
                              DateTime.now().month,
                              DateTime.now().day,
                            ),
                            calendarFormat: CalendarFormat.month,
                          ),
                          Space.y,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
