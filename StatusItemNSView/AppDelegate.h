

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject

@property(strong, nonatomic)NSStatusItem *statusItem;

@property (weak) IBOutlet NSMenu *menu;
- (IBAction)quit:(NSMenuItem *)sender;

@end

