//
//  FISViewController.m
//  horizontal-profile
//
//  Created by Kenneth Cooke on 6/27/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *topBanner;
@property (weak, nonatomic) IBOutlet UIImageView *profilePic;
@property (weak, nonatomic) IBOutlet UITextView *textBody;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *className;
@property (weak, nonatomic) IBOutlet UILabel *fact;
@property (strong, nonatomic) NSLayoutConstraint *topBannerBottom;
@property (strong, nonatomic) NSLayoutConstraint *topBannerTop;
@property (strong, nonatomic) NSLayoutConstraint *textTop;
@property (strong, nonatomic) NSLayoutConstraint *textleft;
@property (strong, nonatomic) NSLayoutConstraint *altTextTop;
@property (strong, nonatomic) NSLayoutConstraint *textBottom;
@property (strong, nonatomic) NSLayoutConstraint *altTextLeft;
@property (strong, nonatomic) NSLayoutConstraint *altTextBottom;




@end

@implementation FISViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    
    self.topBannerTop = [self.topBanner.topAnchor constraintEqualToAnchor:self.view.topAnchor];
    self.topBannerTop.active = YES;
    [self.topBanner.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [self.topBanner.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:.125].active = YES;
    
    self.topBannerBottom = [self.topBanner.bottomAnchor constraintEqualToAnchor:self.view.topAnchor];
    
    
    [self.profilePic.topAnchor constraintEqualToAnchor:self.topBanner.bottomAnchor constant:80].active = YES;
    [self.profilePic.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:30].active = YES;
    [self.profilePic.bottomAnchor constraintEqualToAnchor:self.profilePic.topAnchor constant:100].active = YES;
    [self.profilePic.rightAnchor constraintEqualToAnchor:self.profilePic.leftAnchor constant:100].active = YES;
    
    [self.name.topAnchor constraintEqualToAnchor:self.profilePic.topAnchor].active = YES;
    [self.name.leftAnchor constraintEqualToAnchor:self.profilePic.rightAnchor constant:40].active = YES;
    
    [self.className.leftAnchor constraintEqualToAnchor:self.profilePic.rightAnchor constant:40].active = YES;
    [self.className.centerYAnchor constraintEqualToAnchor:self.profilePic.centerYAnchor].active = YES;
    
    [self.fact.leftAnchor constraintEqualToAnchor:self.profilePic.rightAnchor constant:40].active = YES;
    [self.fact.bottomAnchor constraintEqualToAnchor:self.profilePic.bottomAnchor].active = YES;
    
    
    //textBody
    
   
    self.textTop = [self.textBody.topAnchor constraintEqualToAnchor:self.profilePic.bottomAnchor constant:40];
    self.textTop.active = YES;
    
    
    self.textleft = [self.textBody.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:30];
    self.textleft.active = YES;
    
    [self.textBody.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-30].active = YES;
    
    
    self.textBottom = [self.textBody.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20];
    self.textBottom.active = YES;
    
    
    self.altTextTop = [self.textBody.topAnchor constraintEqualToAnchor:self.profilePic.topAnchor];
    self.altTextTop.active = NO;
    
   
    self.altTextLeft = [self.textBody.leftAnchor constraintEqualToAnchor:self.fact.rightAnchor constant:30];
    self.altTextLeft.active = NO;
    
    
    self.altTextBottom = [self.textBody.bottomAnchor constraintEqualToAnchor:self.fact.bottomAnchor];
    self.altTextBottom.active = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection{
    if (self.view.traitCollection.displayScale != 3 && self.view.traitCollection.verticalSizeClass == 1) {
        self.topBannerTop.active = NO;
        self.topBannerBottom.active = YES;
        self.topBanner.hidden = YES;
        
    }
    if (self.view.traitCollection.displayScale != 3 && self.view.traitCollection.verticalSizeClass == 2) {
        self.topBannerBottom.active = NO;
        self.topBanner.hidden = NO;
        
        self.topBannerTop.active = YES;
        
        
        
}
    if (self.view.traitCollection.displayScale == 3 && self.view.traitCollection.verticalSizeClass == 1) {
       
        self.textleft.active = NO;
        self.textTop.active = NO;
        self.textBottom.active = NO;
        
        self.altTextTop.active = YES;
        self.altTextLeft.active = YES;
        self.altTextBottom.active = YES;
        
    }
    if (self.view.traitCollection.displayScale == 3 && self.view.traitCollection.verticalSizeClass == 2) {
     
        self.altTextTop.active = NO;
        self.altTextLeft.active = NO;
        self.altTextBottom.active = NO;
        
        self.textleft.active = YES;
        self.textTop.active = YES;
        self.textBottom.active = YES;
        
        
        
    }
}

@end
