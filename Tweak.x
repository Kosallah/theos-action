#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

// 1. كود الترحيب عند بداية اللعبة
__attribute__((constructor)) static void init() {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Sun Programming" 
            message:@"Welcome Mohammed Salah\n[+] Super Accuracy Active\n[+] White Player Skin Active" 
            preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"Enjoy!" style:UIAlertActionStyleDefault handler:nil]];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    });
}

// 2. كود دقة التسديد الفائقة (Super Accuracy)
// ملاحظة: هذا الكود يستهدف القيم البرمجية للمسؤول عن الانحراف
%hook PlayerShootController
- (float)shotAccuracy {
    return 100.0f; // رفع الدقة للحد الأقصى
}
- (float)curveForce {
    return 0.0f; // تقليل الانحراف العشوائي لضمان المرمى
}
%end

// 3. كود تغيير لون اللاعب للأبيض (White Player Skin)
%hook CharacterVisualManager
- (void)setPlayerSkinColor:(id)color {
    // استبدال اللون الطبيعي باللون الأبيض الناصع
    %orig([UIColor whiteColor]); 
}
%end
