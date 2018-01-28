//
//  Retry.swift
//  Restofire
//
//  Created by Rahul Katariya on 23/04/16.
//  Copyright © 2016 AarKay. All rights reserved.
//

import Foundation

/// A Retry of RESTful Services.
///
/// ```swift
/// var retry = Retry()
/// retry.retryErrorCodes = [.timedOut,.networkConnectionLost]
/// retry.retryInterval = 20
/// retry.maxRetryAttempts = 10
/// ```
public struct Retry {

    /// The retry error codes.
    /// `NSURLErrorTimedOut,
    /// NSURLErrorNetworkConnectionLost` by default.
    public var retryErrorCodes: Set<URLError.Code> = [.timedOut, .networkConnectionLost]
    
    /// The retry interval. `10` by default.
    public var retryInterval: TimeInterval = 10
    
    /// The max retry attempts. `5` by default.
    public var maxRetryAttempts = 5
    
    /// `Retry` Intializer
    ///
    /// - returns: new `Retry` object
    public init() {}
    
}
