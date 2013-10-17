//
//  ICGrid.m
//  isometrico_base
//
//  Created by Brian Salazar on 7/31/13.
//  Copyright (c) 2013 Avenidanet. All rights reserved.
//

#import "ICGrid.h"

@implementation ICGrid
{
    int rowsX, rowsY;
    int rowWidth, rowHeight;
    int zeroX, zeroY;
}

-(id)initWithFrame:(CGRect)frame andRowsX:(int)_rowsX andRowsY:(int)_rowsY andWidthRow:(int)_widthRow andHeightRow:(int)_heightRow
{
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        rowsX = _rowsX;
        rowsY = _rowsY;
        rowWidth = _widthRow;
        rowHeight = _heightRow;
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(context);
    CGContextSetLineWidth(context, 1.0);
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    
    //Punto inicial
    for (int k=1; k<=rowsX; k++) {
        for (int j=0; j<rowsY; j++) {
            int centerX = zeroX+rowWidth/2*j;
            int centerY = zeroY+rowHeight/2*j+rowHeight/2;
            CGContextMoveToPoint(context, centerX-rowWidth/2, centerY);
            CGContextAddLineToPoint(context, centerX, centerY+rowHeight/2);
            CGContextAddLineToPoint(context, centerX+rowWidth/2, centerY);
            CGContextAddLineToPoint(context, centerX, centerY-rowHeight/2);
            CGContextAddLineToPoint(context, centerX-rowWidth/2, centerY);
            
        }
        zeroX = zeroX-rowWidth/2;
        zeroY = zeroY+rowHeight/2;
    }
    
    
    CGContextStrokePath(context);
}
@end
