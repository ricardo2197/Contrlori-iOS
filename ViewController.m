//
//  ViewController.m
//  Controlori
//
//  Created by Ricardo Ungureanu on 11/09/14.
//  Copyright (c) 2014 Ric. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)info:(id)sender
{
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Info" message:@"Developer: Ungureanu Ricardo" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alerta show];

}
@end
