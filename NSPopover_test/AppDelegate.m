//
//  AppDelegate.m
//  NSPopover_test
//
//  Created by Gregory Casamento on 9/30/21.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction) createPopover: (NSButton *)sender
{
    // Create popover
    NSPopover *entryPopover = [[NSPopover alloc] init];
    [entryPopover setContentSize:NSMakeSize(200.0, 200.0)];
    [entryPopover setBehavior:NSPopoverBehaviorTransient];
    [entryPopover setAnimates:YES];
    [entryPopover setContentViewController: self.controller];
    
    // Convert point to main window coordinates
    NSRect entryRect = [sender convertRect:sender.bounds
                                    toView:[[NSApp mainWindow] contentView]];
    
    // Show popover
    [entryPopover showRelativeToRect:entryRect
                              ofView:[[NSApp mainWindow] contentView]
                       preferredEdge:NSMinYEdge];
}
@end
