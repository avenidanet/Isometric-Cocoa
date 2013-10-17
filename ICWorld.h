//
//  ICWorld.h
//  isometrico_base
//
//  Created by Brian Salazar on 7/31/13.
//  Copyright (c) 2013 Avenidanet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICGrid.h"

@interface ICWorld : UIScrollView <UIScrollViewDelegate>

-(id)initWithFrame:(CGRect)frame andRowsX:(int)rowsX andRowsY:(int)rowsY andWidthRow:(int)widthRow andHeightRow:(int)heightRow;

-(void)addGrid:(int)level;
@end
