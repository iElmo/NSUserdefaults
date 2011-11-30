//
//  FirstView.m
//  NSUserDefaults + Tabbar
//
//  Created by Dan on 04/11/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstView.h"


@implementation FirstView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

-(IBAction) save:(id)sender {
    
    
    [firstNameText resignFirstResponder];
    [lastNameText resignFirstResponder];
    [ageText resignFirstResponder];
    
    NSString *firstName = [firstNameText text];
    NSString *lastName = [lastNameText text];
    int age = [[ageText text] integerValue ];
    
    NSUserDefaults *saved = [NSUserDefaults standardUserDefaults];
    
    [saved setObject:firstName forKey:@"firstName"];
    [saved setObject:lastName forKey:@"lastName"];
    [saved setInteger:age forKey:@"age"];
    
    [saved synchronize];
    
    
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
