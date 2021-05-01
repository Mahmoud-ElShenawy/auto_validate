import 'package:auto_validate/auto_validate.dart';
import 'package:test/test.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

void main() {
  group('Common Regular Expressions Tests', () {
    test('CreditCard Test', () {
      var masterCard = '5555555555554444';
      var visa = '4012888888881881';
      var americanExpress = '378282246310005';
      var card = '987654321098765';

      expect(AutoValidate.creditCard(masterCard.toString()), true);
      expect(AutoValidate.creditCard(visa.toString()), true);
      expect(AutoValidate.creditCard(americanExpress.toString()), true);
      expect(AutoValidate.creditCard(card.toString()), false);
    });

    test('Alphanumeric Test', () {
      var success = 'mahmoud123elshenawy';
      var fail = 'mahmoud@elshenawy.com';

      expect(AutoValidate.alphanumeric(success.toString()), true);
      expect(AutoValidate.alphanumeric(fail), false);
    });

    test('Alphanumeric With Spaces Test', () {
      var success = 'mahmoud 123elshenawy';
      var fail = 'mahmoud@elshenawy.com';

      expect(AutoValidate.alphanumericWithSpaces(success.toString()), true);
      expect(AutoValidate.alphanumericWithSpaces(fail.toString()), false);
    });

    test('Alphabet Test', () {
      var success = 'Mahmoud';
      var fail = 'mahmoud@elshenawy.com';

      expect(AutoValidate.alphabet(success.toString()), true);
      expect(AutoValidate.alphabet(fail.toString()), false);
    });

    test('LowerCase Test', () {
      var success = 'mahmoud';
      var fail = 'Mahmoud';

      expect(AutoValidate.lowerCase(success.toString()), true);
      expect(AutoValidate.lowerCase(fail.toString()), false);
    });

    test('UpperCase Test', () {
      var success = 'MAHMOUD';
      var fail = 'MAHMOUD';

      expect(AutoValidate.upperCase(success.toString()), true);
      expect(AutoValidate.upperCase(fail.toString()), false);
    });

    test('Digits Test', () {
      var success = '874654';
      var fail = '456e465';

      expect(AutoValidate.digits(success.toString()), true);
      expect(AutoValidate.digits(fail.toString()), false);
    });

    test('Decimals Test', () {
      var success = '8.74654';
      var fail = '+456465';

      expect(AutoValidate.decimals(success.toString()), true);
      expect(AutoValidate.decimals(fail.toString()), false);
    });

    test('Signed Decimals Test', () {
      var success = '-8.74654';
      var fail = '456465/4';

      expect(AutoValidate.decimalsSigned(success.toString()), true);
      expect(AutoValidate.decimalsSigned(fail.toString()), false);
    });

    test('User Name Test', () {
      var success = 'mahmoud-elshenawy';
      var fail = '@mahmoud';

      expect(AutoValidate.userName(success.toString()), true);
      expect(AutoValidate.userName(fail.toString()), false);
    });

    test('Password Test', () {
      var success = 'mahm000udElshenawy';
      var fail = 'mahmoudelshenawy';

      expect(AutoValidate.password(success.toString()), true);
      expect(AutoValidate.password(fail.toString()), false);
    });

    test('Strong Password Test', () {
      var success = 'm@hm000udElshen@wy';
      var fail = 'mahmoudelshenawy';

      expect(AutoValidate.passwordStrong(success.toString()), true);
      expect(AutoValidate.passwordStrong(fail.toString()), false);
    });

    test('Email Test', () {
      var success = 'mahmoud@elshenawy.com';
      var fail = 'mahmoud@el.shenawy';

      expect(AutoValidate.email(success.toString()), true);
      expect(AutoValidate.email(fail.toString()), false);
    });

    test('IPV4 Test', () {
      var success = '255.125.205.180';
      var fail = '255.256.205.180';

      expect(AutoValidate.ipv4(success.toString()), true);
      expect(AutoValidate.ipv4(fail.toString()), false);
    });

    test('IPV6 Test', () {
      var success = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';
      var fail = '2001:0db8:85a3:0000:0000:0370:7334';

      expect(AutoValidate.ipv6(success.toString()), true);
      expect(AutoValidate.ipv6(fail.toString()), false);
    });

    test('URL Test', () {
      var success = 'https://www.mahmoudelshenawy.com';
      var fail = 'mahmoud.elshenawy';

      expect(AutoValidate.url(success.toString()), true);
      expect(AutoValidate.url(fail.toString()), false);
    });

    test('Date (MMDDYYYY) Test', () {
      var success = '15/06/1997';
      var fail = '15/06/1997';

      expect(AutoValidate.dateMMDDYYYY(success.toString()), true);
      expect(AutoValidate.dateMMDDYYYY(fail.toString()), false);
    });

    test('Date (YYYYMMDD) Test', () {
      var success = '1997 06 15';
      var fail = '1997/06/15';

      expect(AutoValidate.dateYYYYMMDD(success.toString()), true);
      expect(AutoValidate.dateYYYYMMDD(fail.toString()), false);
    });

    test('SSN Test', () {
      var success = '445-82-6835';
      var fail = '121-72-55456';

      expect(AutoValidate.ssn(success.toString()), true);
      expect(AutoValidate.ssn(fail.toString()), false);
    });

    test('Phone Number Test', () {
      var success = '+447911123456';
      var fail = '+987a9875';

      expect(AutoValidate.phone(success.toString()), true);
      expect(AutoValidate.phone(fail.toString()), false);

      expect(AutoValidate.phone(success.toString()), true);
      expect(AutoValidate.phone(fail.toString()), false);
    });

    test('Passport Test', () {
      var success = '9876543210';
      var fail = '0000000000';

      expect(AutoValidate.passport(success.toString()), true);
      expect(AutoValidate.passport(fail.toString()), false);
    });

    test('Arabic Input Test', () {
      var success = 'محمود الشناوى';
      var fail = 'mahmoud el shenawy';

      expect(AutoValidate.inputArabic(success.toString()), true);
      expect(AutoValidate.inputArabic(fail.toString()), false);
    });
  });
}