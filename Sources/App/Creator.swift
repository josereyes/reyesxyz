//
//  Creator.swift
//  App
//
//  Created by Jose Reyes on 2/2/19.
//

import Foundation
//import FluentMySQL
import Vapor

struct Creator: Codable {//, //MySQLModel, Migration {
  var id: Int?
  var fullName: String
  var description: String
  var imageLocation: String
  var twitter: String?
  var linkedin: String?
  var instagram: String?
  var email: String?
}
