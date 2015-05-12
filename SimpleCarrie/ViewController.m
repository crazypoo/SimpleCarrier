//
//  ViewController.m
//  SimpleCarrie
//
//  Created by crazypoo on 15/5/12.
//  Copyright (c) 2015年 P. All rights reserved.
//

#import "ViewController.h"
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"lalalalalaa>>>>%@>%@",[self currentRadioAccessTechnology],[self subscriberCellularProvider]);

}

-(NSString *)currentRadioAccessTechnology
{
    CTTelephonyNetworkInfo *current = [[CTTelephonyNetworkInfo alloc] init];
    return current.currentRadioAccessTechnology;
}

-(NSMutableDictionary *)subscriberCellularProvider
{
    NSMutableDictionary *arr = [[NSMutableDictionary alloc]init];
    CTTelephonyNetworkInfo *current = [[CTTelephonyNetworkInfo alloc] init];
    [arr setObject:current.subscriberCellularProvider.carrierName forKey:@"carrierName"];
    [arr setObject:current.subscriberCellularProvider.mobileCountryCode forKey:@"mobileCountryCode"];
    [arr setObject:current.subscriberCellularProvider.mobileNetworkCode forKey:@"mobileNetworkCode"];
    [arr setObject:current.subscriberCellularProvider.isoCountryCode forKey:@"isoCountryCode"];
    [arr setObject:[NSNumber numberWithBool:current.subscriberCellularProvider.allowsVOIP] forKey:@"allowsVOIP"];
    return arr;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
