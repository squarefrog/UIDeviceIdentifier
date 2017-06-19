//
//  ViewController.m
//  UIDeviceIdentifier
//
//  Created by Antoine Cœur on 22/12/2015.
//
//

#import "ViewController.h"
#import <UIDeviceIdentifier/UIDeviceHardware.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *platformLabel;
@property (weak, nonatomic) IBOutlet UILabel *platformStringLabel;
@property (weak, nonatomic) IBOutlet UILabel *platformStringSimpleLabel;

@end

@implementation ViewController

- (IBAction)getPlatform:(id)sender {
    _platformLabel.text = [UIDeviceHardware platform];
}

- (IBAction)getPlatformString:(id)sender {
    _platformStringLabel.text = [UIDeviceHardware platformString];
}

- (IBAction)getPlatformStringSimple:(id)sender {
    _platformStringSimpleLabel.text = [UIDeviceHardware platformStringSimple];
}

@end
