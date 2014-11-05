//
//  PlayController.m
//  VisualMusicPlay
//
//  Created by Fhict on 04/11/14.
//  Copyright (c) 2014 GeertBerkers. All rights reserved.
//

#import "PlayController.h"

@interface PlayController ()

@end

@implementation PlayController

-(IBAction)showTitle{
    
}


-(IBAction)showChoose{
    if([playSound.currentTitle isEqual:@"Play"])
    {
        chooseImage.hidden=NO;
    }
    else
    {
        chooseImage.hidden=YES;
    }
    
}
-(IBAction)showPlay{
    playSound.hidden=NO;
}

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

@end
