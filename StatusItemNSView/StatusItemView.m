
#import "StatusItemView.h"
#import "AppDelegate.h"

@implementation StatusItemView



- (id)initWithFrame:(NSRect)frameRect controller:(AppDelegate *)ctrlr
{
    if (self = [super initWithFrame:frameRect]) {
        controller = ctrlr;
    }
    
    return self;
}

- (void)drawRect:(NSRect)rect {
    // Draw background if appropriate.
    
    if (clicked) {
        [[NSColor selectedMenuItemColor] set];
        NSRectFill(rect);
    }
    
    // Draw some text, just to show how it's done.
    NSString *text = @"3"; // whatever you want
    NSColor *textColor = [NSColor controlTextColor];
    
    if (clicked) {
        textColor = [NSColor selectedMenuItemTextColor];
    }
    
    NSFont *msgFont = [NSFont menuBarFontOfSize:15.0];
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    [paraStyle setParagraphStyle:[NSParagraphStyle defaultParagraphStyle]];
    [paraStyle setAlignment:NSCenterTextAlignment];
    [paraStyle setLineBreakMode:NSLineBreakByTruncatingTail];
    NSMutableDictionary *msgAttrs = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                     msgFont, NSFontAttributeName,
                                     textColor, NSForegroundColorAttributeName,
                                     paraStyle, NSParagraphStyleAttributeName,
                                     nil];
    
    NSSize msgSize = [text sizeWithAttributes:msgAttrs];
    NSRect msgRect = NSMakeRect(0, 0, msgSize.width, msgSize.height);
    msgRect.origin.x = ([self frame].size.width - msgSize.width) / 2.0;
    msgRect.origin.y = ([self frame].size.height - msgSize.height) / 2.0;
    
    [text drawInRect:msgRect withAttributes:msgAttrs];
}

- (void)mouseDown:(NSEvent *)event
{
    clicked = !clicked;
    [self setNeedsDisplay:YES];
    [controller.statusItem popUpStatusItemMenu:controller.menu];
    
}






@end
