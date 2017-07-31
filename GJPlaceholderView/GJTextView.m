//
//  GJTextView.m
//  GJTextView
//
//  Created by gaojun on 16/9/10.
//  Copyright © 2016年 gaojun. All rights reserved.
//

#import "GJTextView.h"

@interface GJTextView()
@property (nonatomic,strong) UILabel *placeholderLabel;
@end
@implementation GJTextView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.placeholderLabel];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChanged:) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}

#pragma mark - setter
- (void)setPlaceholder:(NSString *)placeholder {
    _placeholder = placeholder;
    
    self.placeholderLabel.text = placeholder;
}

- (void)setPlaceholderFont:(UIFont *)placeholderFont {
    _placeholderFont = placeholderFont;
    
    self.placeholderLabel.font = placeholderFont;
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    _placeholderColor = placeholderColor;
    
    self.placeholderLabel.textColor = placeholderColor;
}

#pragma mark - handle notification
- (void)textDidChanged:(NSNotification *)noti {
    if (self.text.length) {
        self.placeholderLabel.hidden = YES;
    } else {
        self.placeholderLabel.hidden = NO;
    }
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextFieldTextDidChangeNotification object:nil];
}

#pragma mark - lazy loading
- (UILabel *)placeholderLabel {
    if (!_placeholderLabel) {
        _placeholderLabel = [UILabel new];
        _placeholderLabel.frame = CGRectMake(5,4,200, 25);//此处可修改成自己需要的位置
        _placeholderLabel.textColor = [UIColor lightGrayColor];
        _placeholderLabel.font = [UIFont systemFontOfSize:14];
    }
    return _placeholderLabel;
}

@end
