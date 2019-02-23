//
//  Extension+NSError.swift
//  App
//
//  Created by Jose Reyes on 2/20/19.
//

import Foundation
import Vapor

extension NSError: Debuggable {
  var error: Error { return self as Error }
  
  public var identifier: String {
    return self.domain + "." + self.code.description
  }
  
  public var reason: String {
    let errorDescription = String(describing: error)
    return errorDescription
  }
}
