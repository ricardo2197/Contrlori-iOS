//
//  AdaugaViewController.h
//  Controlori
//
//  Created by Ricardo Ungureanu on 11/09/14.
//  Copyright (c) 2014 Ric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdaugaViewController : UIViewController<UITextFieldDelegate>
- (IBAction)back:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *text_traseu;
@property (weak, nonatomic) IBOutlet UITextField *text_detali;
- (IBAction)raporteaza:(id)sender;

@end
