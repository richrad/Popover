//
//  iOSVersion.swift
//  Popover
//
//  Created by Maxim Bilan on 5/15/15.
//  Copyright (c) 2015 Lapdog. All rights reserved.
//

import UIKit

public class IOSVersion {
	class func SYSTEM_VERSION_EQUAL_TO(version: NSString) -> Bool {
		return UIDevice.currentDevice().systemVersion.compare(version as String,
			options: NSStringCompareOptions.NumericSearch) == NSComparisonResult.OrderedSame
	}
	
	class func SYSTEM_VERSION_GREATER_THAN(version: NSString) -> Bool {
		return UIDevice.currentDevice().systemVersion.compare(version as String,
			options: NSStringCompareOptions.NumericSearch) == NSComparisonResult.OrderedDescending
	}
	
	class func SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(version: NSString) -> Bool {
		return UIDevice.currentDevice().systemVersion.compare(version as String,
			options: NSStringCompareOptions.NumericSearch) != NSComparisonResult.OrderedAscending
	}
	
	class func SYSTEM_VERSION_LESS_THAN(version: NSString) -> Bool {
		return UIDevice.currentDevice().systemVersion.compare(version as String,
			options: NSStringCompareOptions.NumericSearch) == NSComparisonResult.OrderedAscending
	}
	
	class func SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(version: NSString) -> Bool {
		return UIDevice.currentDevice().systemVersion.compare(version as String,
			options: NSStringCompareOptions.NumericSearch) != NSComparisonResult.OrderedDescending
	}
}
