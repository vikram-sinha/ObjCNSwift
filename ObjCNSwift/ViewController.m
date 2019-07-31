//
//  ViewController.m
//  ObjCNSwift
//
//  Created by Vikram Sinha on 19/02/19.
//  Copyright © 2019 Vikram Sinha. All rights reserved.
//

#import "ViewController.h"
#import <ObjCNSwift-Swift.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    VController *vc = [VController new];
    NSLog(@"swift function returned: %@", [vc functionInSwiftWithStr:@"Sinha"]);
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSString*)functionInSwiftWithStr:(NSString*)str{
    NSString *strRet = [NSString stringWithFormat:@"%@  Vikram", str];
    return strRet;
}

@end
