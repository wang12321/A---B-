//
//  ViewController.m
//  wlgasd
//
//  Created by 汪利钢 on 16/1/7.
//  Copyright © 2016年 汪利钢. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIDocumentInteractionControllerDelegate>

@end

@implementation ViewController
- (IBAction)button1:(UIButton *)sender {
    NSURL *URL = [[NSBundle mainBundle] URLForResource:@"Using Swift with Cocoa and Objective-C完整中文CocoaChina精校版" withExtension:@"pdf"];
       if (URL) {
                // Initialize Document Interaction Controller
                self.documentInteractionController = [UIDocumentInteractionController
                                                        interactionControllerWithURL:URL];
                // Configure Document Interaction Controller
            [self.documentInteractionController setDelegate:self];
               // Preview PDF
            [self.documentInteractionController presentPreviewAnimated:YES];
        }
    
    
}
- (IBAction)button2:(UIButton *)sender {
    UIButton *button = (UIButton *)sender;
    NSURL *URL = [[NSBundle mainBundle] URLForResource:@"Using Swift with Cocoa and Objective-C完整中文CocoaChina精校版" withExtension:@"pdf"];
       if (URL) {
               // Initialize Document Interaction Controller
               self.documentInteractionController = [UIDocumentInteractionController
                                                        interactionControllerWithURL:URL];
                // Configure Document Interaction Controller
                [self.documentInteractionController setDelegate:self];
                // Present Open In Menu
                [self.documentInteractionController presentOpenInMenuFromRect:[button frame] inView:self.view animated:YES];
            }
    
    
}

-(UIViewController*)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller{
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
