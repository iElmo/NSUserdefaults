//
//  SecondView.h
//  NSUserDefaults + Tabbar
//
//  Created by Dan on 04/11/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondView : UIViewController {
    
    IBOutlet UITextField *firstNameText;
    IBOutlet UITextField *lastNameText;
    IBOutlet UITextField *ageText;
    
}

-(IBAction) load;

@end
