//
//  SecondView.m
//  NSUserDefaults + Tabbar
//
//  Created by Dan on 04/11/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondView.h"


@implementation SecondView

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


-(IBAction) load {
    
    NSUserDefaults *loader = [NSUserDefaults standardUserDefaults];
    
    NSString *firstName = [loader objectForKey:@"firstName"];
    NSString *lastName = [loader objectForKey:@"lastName"];
    int age = [loader integerForKey:@"age"];
    NSString *ageString = [NSString stringWithFormat:@"%i", age];
    
    firstNameText.text = firstName;
    lastNameText.text = lastName;
    ageText.text = ageString;
   
    
    
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
