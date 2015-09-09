//
//  CardGameViewController.m
//  CardGame
//
//  Created by MacMan on 8/27/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic)int flipCount;


@end

@implementation CardGameViewController

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);

}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]){
        
    [sender setBackgroundImage:[UIImage imageNamed:@"subzeroCardBack"]
                    forState:UIControlStateNormal];
    [sender setTitle:@"" forState:UIControlStateNormal];

        
    }else
    {
    [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                      forState:UIControlStateNormal];
    [sender setTitle:@"A♣️" forState:UIControlStateNormal];
}
    self.flipCount++;
    
}

@end