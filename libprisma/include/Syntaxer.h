//  This source file is derived from Telegram iOS:
//  https://github.com/TelegramMessenger/Telegram-iOS
//
//  Distributed under the terms of the GNU General Public License,
//  version 2 or any later version. See the LICENSE file for details.

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SyntaxterTheme : NSObject
@property (nonatomic, assign) BOOL dark;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIFont *textFont;
@property (nonatomic, strong) UIFont *italicFont;
@property (nonatomic, strong) UIFont *mediumFont;
-(id)initWithDark:(BOOL)dark textColor:(UIColor *)textColor textFont:(UIFont *)textFont italicFont:(UIFont *)italicFont mediumFont:(UIFont *) mediumFont;
@end

@interface Syntaxer : NSObject
-(id)init;
-(NSAttributedString *)syntax:(NSString *)code language: (NSString *)language theme:(SyntaxterTheme *) theme;
@end
