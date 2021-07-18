//
// AutoLayoutDemoViewController.m
// DTCoreText
//
// Created by David Whetstone on 5/8/15.
// Copyright (c) 2015 Drobnik.com. All rights reserved.
//

#import "AutoLayoutDemoViewController.h"

@interface AutoLayoutDemoViewController ()

@property (nonatomic, DT_WEAK_PROPERTY) IBOutlet DTAttributedTextContentView *textView;
@end

@implementation AutoLayoutDemoViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    [self test];
}

- (void)test1
{
    NSString *html = @"<html><body>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</body></html>";
    NSData *data = [html dataUsingEncoding:NSUTF8StringEncoding];
    self.textView.attributedString = [[NSAttributedString alloc] initWithHTMLData:data documentAttributes:NULL];
}

- (void)test
{
    NSString *myHTML = @"下载公告中的投资者关系活动记录表docx文件 网页链接。 <a href=\"https://xueqiu.com/S/SZ000858/128689251?xueqiu_status_id=180526437&amp;xueqiu_status_from_source=utl&amp;xueqiu_status_source=statusdetail&amp;xueqiu_private_from_source=0105\" title=\"https://xueqiu.com/S/SZ000858/128689251?xueqiu_status_id=180526437&amp;xueqiu_status_from_source=utl&amp;xueqiu_status_source=statusdetail&amp;xueqiu_private_from_source=0105\" target=\"_blank\" class=\"status-link\">网页链接</a>";
    NSData *data = [myHTML dataUsingEncoding:NSUTF8StringEncoding];
    self.textView.attributedString = [[NSAttributedString alloc] initWithHTMLData:data documentAttributes:NULL];
}

@end
