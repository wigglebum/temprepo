
#import <Cocoa/Cocoa.h>
@class AppDelegate;

@interface StatusItemView : NSView{

__weak AppDelegate *controller;
    BOOL clicked;
}

-(instancetype) initWithFrame:(NSRect)frameRect controller:(AppDelegate *) cntrlr;

@end
