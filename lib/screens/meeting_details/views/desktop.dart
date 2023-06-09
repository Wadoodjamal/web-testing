part of '../meeting_details.dart';

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
                                  SizedBox(
                                    width: AppDimensions.normalize(90),
                                    child: Text(
                                      'Web conferencing details provided upon confirmation.',
                                      style: AppText.b4bm.cl(
                                        Colors.black54,
                                      ),
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
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter Details',
                            style: AppText.h6b.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          Space.y2,
                          Text(
                            'Name *',
                            style: AppText.b1bm.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          Space.y1,
                          const CustomTextField(
                            name: 'name',
                            hint: 'Enter Name',
                          ),
                          Space.y1,
                          Text(
                            'Email *',
                            style: AppText.b1bm.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          Space.y1,
                          const CustomTextField(
                            name: 'email',
                            hint: 'Enter Email',
                          ),
                          Space.y2,
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: UIProps.buttonRadius,
                                side: const BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                              padding: EdgeInsets.all(
                                AppDimensions.normalize(5),
                              ),
                            ),
                            child: Text(
                              'Add Guests',
                              style: AppText.b4bm.cl(
                                Colors.blue,
                              ),
                            ),
                          )
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
