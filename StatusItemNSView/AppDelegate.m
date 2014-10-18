

#import "AppDelegate.h"
#import "StatusItemView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)awakeFromNib
{
    // Create an NSStatusItem.
    float width = 30.0;
    float height = [[NSStatusBar systemStatusBar] thickness];
    NSRect viewFrame = NSMakeRect(0, 0, width, height);
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:width];
    [self.statusItem setView:[[StatusItemView alloc] initWithFrame:viewFrame controller:self]];
}

- (IBAction)quit:(NSMenuItem *)sender {
    [NSApp terminate:nil];
}



@end
