// 
//  AmStockPanel.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmStockPanel.h"
#import "AmCategories.h"
#import "AmValueAxis.h"
#import "AmStockLegend.h"


@implementation AmStockPanel

- (id)init {
	self = [super init];
	if (self) {
		self.allowTurningOff = false;
		self.drawingIconsEnabled = false;
		self.eraseAll = false;
		self.iconSize = @(18);
		self.recalculateToPercents = @"whenComparing";
		self.showCategoryAxis = true;
		self.showComparedOnTop = true;
		self.trendLineAlpha = @(1);
		self.trendLineColor = @"#00CC00";
		self.trendLineDashLength = @(0);
		self.trendLineThickness = @(2);
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	[dictRep setObject:@(self.allowTurningOff) forKey:@"allowTurningOff"];

	[dictRep setObject:@(self.drawingIconsEnabled) forKey:@"drawingIconsEnabled"];

	if (self.drawOnAxis) {
		[dictRep setObject:[self.drawOnAxis jsonRepresentation] forKey:@"drawOnAxis"];
	}

	[dictRep setObject:@(self.eraseAll) forKey:@"eraseAll"];

	if (self.iconSize) {
		[dictRep setObject:self.iconSize forKey:@"iconSize"];
	}

	if (self.percentHeight) {
		[dictRep setObject:self.percentHeight forKey:@"percentHeight"];
	}

	if (self.recalculateToPercents) {
		[dictRep setObject:self.recalculateToPercents forKey:@"recalculateToPercents"];
	}

	[dictRep setObject:@(self.showCategoryAxis) forKey:@"showCategoryAxis"];

	[dictRep setObject:@(self.showComparedOnTop) forKey:@"showComparedOnTop"];

	if (self.stockGraphs) {
		[dictRep setObject:self.stockGraphs forKey:@"stockGraphs"];
	}

	if (self.stockLegend) {
		[dictRep setObject:[self.stockLegend jsonRepresentation] forKey:@"stockLegend"];
	}

	if (self.title) {
		[dictRep setObject:self.title forKey:@"title"];
	}

	if (self.trendLineAlpha) {
		[dictRep setObject:self.trendLineAlpha forKey:@"trendLineAlpha"];
	}

	if (self.trendLineColor) {
		[dictRep setObject:self.trendLineColor forKey:@"trendLineColor"];
	}

	if (self.trendLineDashLength) {
		[dictRep setObject:self.trendLineDashLength forKey:@"trendLineDashLength"];
	}

	if (self.trendLineThickness) {
		[dictRep setObject:self.trendLineThickness forKey:@"trendLineThickness"];
	}

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"stockPanel\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end