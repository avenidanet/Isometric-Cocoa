//
//  ICWorld.m
//  Isometric Cocoa
//
//  Created by Brian Salazar on 7/31/13.
//  Copyright (c) 2013 Avenidanet. All rights reserved.
//

#import "ICWorld.h"

@implementation ICWorld
{
    int mHeight, mWidth, totalRows;
    UIView *world;
}

//Init World
-(id)initWithFrame:(CGRect)frame andRowsX:(int)rowsX andRowsY:(int)rowsY andWidthRow:(int)widthRow andHeightRow:(int)heightRow
{
    
    self = [super initWithFrame:frame];
    if (self) {
        mHeight = heightRow/2;
        mWidth = widthRow/2;
        totalRows = rowsX+rowsY;
        
        self.contentSize = CGSizeMake(mWidth*totalRows, mHeight*totalRows);
        self.minimumZoomScale = 0.5;
        self.maximumZoomScale = 1.5;
        self.delegate = self;
        
        world = [[UIView alloc]initWithFrame:CGRectMake(0, 0, mWidth*totalRows, mHeight*totalRows)];
        //world.backgroundColor = [UIColor whiteColor];
        [self addSubview:world];
        
    }
    
    return self;
}

//Zoom World
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return world;
}

//Add grid
-(void)addGrid:(int)level
{

}

@end
