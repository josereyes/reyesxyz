//
//  Creator.swift
//  App
//
//  Created by Jose Reyes on 2/2/19.
//

import Foundation
import Vapor

/// The person being promoted in this website
struct Creator: Codable {
  /// Default to 0
  var id: Int?
  /// Your full name
  var fullName: String
  /// A description yourself
  var description: String
  /// A location for a profile image
  var imageLocation: String
  
  // Social/Contact URLs
  var twitter: String?
  var linkedin: String?
  var instagram: String?
  var github: String?
  var email: String?
}
