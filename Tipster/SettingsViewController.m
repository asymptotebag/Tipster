//
//  SettingsViewController.m
//  Tipster
//
//  Created by Emily Jiang on 6/22/21.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *budgetField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *orderLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *percentSelector;
@property (weak, nonatomic) IBOutlet UIView *labelsContainerView;
@property int textLen;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textLen = 0;
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:true];
}

- (IBAction)updateLabels:(id)sender {
    
    self.textLen = self.budgetField.text.length;
    
    double tipPercentages[] = {0.15, 0.2, 0.25};
    double tipPercentage = tipPercentages[self.percentSelector.selectedSegmentIndex];
    double budget = [self.budgetField.text doubleValue];
    double maxOrder = budget / (1+tipPercentage);
    double tip = budget - maxOrder;
    
    self.tipLabel.text = [NSString stringWithFormat:@"max tip: %.2f", tip];
    self.orderLabel.text = [NSString stringWithFormat:@"order < %.2f", maxOrder];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
