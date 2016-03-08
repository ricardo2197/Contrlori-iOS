//
//  ControloriViewController.m
//  Controlori
//
//  Created by Ricardo Ungureanu on 11/09/14.
//  Copyright (c) 2014 Ric. All rights reserved.
//

#import "ControloriViewController.h"
NSArray *raspuns;
NSMutableArray *ruta;
NSMutableArray *detali;
int a;
@interface ControloriViewController ()

@end

@implementation ControloriViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self getData];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self getData];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)back:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)getData
{
    NSURL *url = [NSURL URLWithString:@"http://ricardo2197.com/controlori/request.php"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [conn start];
/* ........ */
/* ........ */
/* ........ */
    

}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    ruta = [NSMutableArray array];
    detali = [NSMutableArray array];
    
    raspuns = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
   
    for(NSDictionary *lista in raspuns)
    {
     [ruta addObject:[lista objectForKey:@"ruta"]];
        [detali addObject: [lista objectForKey:@"detali"]];
    
    }
 
    //NSLog(@"%@%@", ruta, detali);
    [self tableView:self.tabel numberOfRowsInSection:0];
    
    [self.tabel reloadData];
    }

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   
    return [detali count];
    
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
 
    cell.textLabel.text = [detali objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Traseul: %@",[ruta objectAtIndex:indexPath.row]];
    
    
    return cell;
}

@end
