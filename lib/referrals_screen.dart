import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';

class ReferralsScreen extends StatelessWidget {
  const ReferralsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 8,left: 18),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_outlined,

                  size: 16,
                ),
              ),
            ),
          ),
        ),
        title: boldText("Referrals", ColorResources.blue1D3, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Images.referralsScreen),
              Column(
                children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     boldText(
                         "Here’s R100 ", ColorResources.blue1D3, 24),
                     boldText(
                         "free ", ColorResources.black111, 24),
                     boldText(
                         "on us!", ColorResources.blue1D3, 24),
                   ],
                 ),
                  const SizedBox(height: 8),
                  regularText("Share you referral link and earn R20",
                      ColorResources.grey6B7, 16),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: ColorResources.greyF9F,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.copy, color: ColorResources.grey6B7),
                      mediumText("LIK5896O", ColorResources.grey9CA, 14),
                      boldText("Share", ColorResources.black, 14),
                    ],
                  ),
                ),
              ),
              const Divider(thickness: 1, color: ColorResources.greyF3F),
              Column(
                children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     boldText(
                         "Get R51 ", ColorResources.blue1D3, 24),
                     boldText(
                         "free", ColorResources.black111, 24),
                   ],
                 ),
                  const SizedBox(height: 8),
                  regularText("For any account you connects",
                      ColorResources.grey6B7, 16),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ColorResources.white,
                        border: Border.all(color: ColorResources.greyE5E, width: 1),
                      ),
                      child: Center(
                        child: SvgPicture.asset(Images.googleImage),
                      ),
                    ),
                  ),
                  const SizedBox(width: 25),
                  Expanded(
                    child: Container(
                      width: Get.width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ColorResources.white,
                        border: Border.all(color: ColorResources.greyE5E, width: 1),
                      ),
                      child: Center(
                        child: SvgPicture.asset(Images.appleImage),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
