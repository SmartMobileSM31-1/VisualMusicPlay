//
//  PlayController.h
//  VisualMusicPlay
//
//  Created by Fhict on 04/11/14.
//  Copyright (c) 2014 GeertBerkers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface PlayController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    IBOutlet UIButton *chooseI;
    IBOutlet UIButton *playS;
    IBOutlet UILabel *titelI;
    SystemSoundID soundID;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (strong, nonatomic) UIImage *chosenI;
@property (strong, nonatomic) UIImagePickerController *imageP;

-(IBAction)showChoose;
-(IBAction)showPlay;
-(IBAction)showTitle;
@end