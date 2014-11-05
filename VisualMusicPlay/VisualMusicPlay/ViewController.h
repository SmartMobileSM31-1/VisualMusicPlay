//
//  ViewController.h
//  VisualMusicPlay
//
//  Created by Fhict on 16/10/14.
//  Copyright (c) 2014 GeertBerkers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    IBOutlet UIButton *chooseImage;
    IBOutlet UIButton *playSound;
    IBOutlet UILabel *titelImage;
    SystemSoundID soundID;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) UIImage *chosenImage;
@property (strong, nonatomic) UIImagePickerController *imagePicker;


-(IBAction)hideChoose;
-(IBAction)hidePlay;

-(IBAction)showChoose;
-(IBAction)showPlay;

-(IBAction)showTitle;
@end
