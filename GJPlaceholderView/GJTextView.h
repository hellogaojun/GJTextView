//
//  GJTextView.h
//  GJTextView
//
//  Created by gaojun on 16/9/10.
//  Copyright © 2016年 gaojun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GJTextView : UITextView
/**
 *  占位符文本
 */
@property (nonatomic,copy) NSString *placeholder;
/**
 *  占位符文本字体颜色
 */
@property (nonatomic,strong) UIColor *placeholderColor;
/**
 *  占位符文本字体大小
 */
@property (nonatomic,strong) UIFont *placeholderFont;
@end
