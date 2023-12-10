import 'package:booking_uz/features/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});
  static const String id = 'TermsAndConditionsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: const Color(0xff003290),
        title: const Text(
          'Terms and conditions',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 8.0,right: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 14.0),
              Text('Please read these terms and conditions ("terms and conditions", "terms") carefully before using [website URL]'
                  'website ("website", "service") operated by [company name] ("us", ''we", "our").'
              '  Conditions of use By using this website, you certify that you have read and reviewed this Agreement and that you agree to comply with its terms. If you do not want to be bound by the terms of this Agreement, you are advised to stop using the website accordingly. [company name] only grants use and access of this website, its products, and its services to those who'
              '  have accepted its terms.'
               ' Privacy policy Before you continue using our website, we advise you to read our privacy policy [link to privacy policy] regarding our'
               ' user data collection. It will help you better understand our practices.'
                'Age restriction You must be at least 18 (eighteen) years of age before you can use this website. By using this website, you warrant that you are at least 18 years of age and you may legally adhere to this Agreement. [company name] assumes no'
          'responsibility for liabilities related to age misrepresentation.'
          '  Intellectual property You agree that all materials, products, and services provided on this website are the property of [company name], its affiliates, directors, officers, employees, agents, suppliers, or licensors including all copyrights, trade secrets, trademarks, patents, and other intellectual property. You also agree that you will not reproduce or redistribute the'
        '  [company namel''s intellectual property in any way, including electronic, digital, or new trademark registrations. You grant [company name] a royalty-free and non-exclusive license to display, use, copy, transmit, and broadcast the content you upload and publish. For issues regarding intellectual property claims, you should contact the company in'
              ' order to come to an agreement.'
              'User accounts As a user of this website, you may be asked to register with us and provide private information. You are responsible for ensuring the accuracy of this information, and you are responsible for maintaining the safety and security of your'
              'identifying information. You are also responsible for all activities that occur under your account or password. If you think there are any possible issues regarding the security of your account on the website, inform us'
                'immediately so we may address them accordingly.'
                'We reserve all rights to terminate accounts, edit or remove content and cancel orders at our sole discretion.'
                ' Applicable law By using this website, you agree that the laws of the [your location], without regard to principles of conflict laws, will govern these terms and conditions, or any dispute of any sort that might come between [company name] and you, or'
                ' its business partners and associates.'
                ' Disputes Any dispute related in any way to your use of this website or to products you purchase from us shall be arbitrated by'
              ' state or federal court [your location] and you consent to exclusive jurisdiction and venue of such courts.'
              ' Indemnification You agree to indemnify [company name] and its affiliates and hold [company name] harmless against legal claims and demands that may arise from your use or misuse of our services. We reserve the right to select our own legal'
              'counsel.'
              'Limitation on liability [company name] is not liable for any damages that may occur to you as a result of your misuse of our website. [company name] reserves the right to edit, modify, and change this Agreement at any time. We shall let our users know of these changes through electronic mail. This Agreement is an understanding between [company name] and'
              ' the user, and this supersedes and replaces all prior agreements regarding the use of this website.',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 18),),
              const SizedBox(height: 14.0),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const MainPage()));
                  },
                  child: const Text('Accept',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),)
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
