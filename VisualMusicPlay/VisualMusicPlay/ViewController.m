//
//  ViewController.m
//  VisualMusicPlay
//
//  Created by Fhict on 16/10/14.
//  Copyright (c) 2014 GeertBerkers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

-(IBAction)showTitle{

}

-(IBAction)hideChoose{
    chooseImage.hidden=YES;
}
-(IBAction)hidePlay{
    playSound.hidden=YES;
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
/*
- (IBAction)chooseImage:(id)sender editingInfo:(NSDictionary *)editingInfo{
    self.imagePicker = [[UIImagePickerController alloc] init];
    self.imagePicker.delegate = self;
    [self.imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:self.imagePicker animated:YES completion:nil];
    [sender dismissModalViewControllerAnimated:YES];
    
  //  NSURL *imagePath = [editingInfo objectForKey:@"UIImagePickerControllerReferenceURL"];
  //  NSString *imageName = [imagePath lastPathComponent];
  //  [self changeImageTitle:@"imageName"];
}

-(void)changeImageTitle:(NSString *)str{
    [titelImage setText: str];
}*/
- (IBAction)chooseImage:(id)sender {
    self.imagePicker = [[UIImagePickerController alloc] init];
    self.imagePicker.delegate = self;
    [self.imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:self.imagePicker animated:YES completion:nil];
    [sender dismissModalViewControllerAnimated:YES];
}

- (IBAction)playSound:(id)sender {
    UIButton *button = (UIButton *)sender;
    NSString *buttonTitle = button.currentTitle;
    if ([buttonTitle isEqual: @"Play"])
    {
        [sender setTitle:@"Stop" forState:UIControlStateNormal];
    }
    else if ([buttonTitle isEqual: @"Stop"])
    {
        [sender setTitle:@"Play" forState:UIControlStateNormal];
    }
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    self.chosenImage = info[UIImagePickerControllerOriginalImage];
    [self.imageView setImage:self.chosenImage];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
