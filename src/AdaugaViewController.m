//
//  AdaugaViewController.m
//  Controlori
//
//  Created by Ricardo Ungureanu on 11/09/14.
//  Copyright (c) 2014 Ric. All rights reserved.
//

#import "AdaugaViewController.h"

@interface AdaugaViewController ()

@end

@implementation AdaugaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.text_traseu.delegate = self;
    self.text_detali.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
    
}
- (IBAction)raporteaza:(id)sender {
    [self.text_traseu resignFirstResponder];
    [self.text_detali resignFirstResponder];
    
    
    NSMutableURLRequest *request = [NSMutableURLRequest
									requestWithURL:[NSURL URLWithString:@""]];//url goes here
    
    NSString *params = [[NSString alloc] initWithFormat:@"traseu=%@&detali=%@", self.text_traseu.text, self.text_detali.text];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:[params dataUsingEncoding:NSUTF8StringEncoding]];
    NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Alerta" message:@"Controlorul a fost adaugat cu succes!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alerta show];
    
}

@end
