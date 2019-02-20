//
//  FrontEnd.swift
//  App
//
//  Created by Jose Reyes on 1/30/19.
//

import Foundation
import Leaf
import Vapor

class FrontEnd: RouteCollection {
  func boot(router: Router) throws {
    router.get(use: getHomePage)
  }
  
  func getHomePage(req: Request) throws -> Future<View> {
    let directory = DirectoryConfig.detect()
    let configDir = "Sources/App/Content"
    
    do {
      let data = try Data(contentsOf: URL(fileURLWithPath: directory.workDir)
        .appendingPathComponent(configDir, isDirectory: true)
        .appendingPathComponent("creatordata.json", isDirectory: false))
      
      let decoder = JSONDecoder()
      let creator = try decoder.decode(Creator.self, from: data)
      return try req.view().render("home", creator)
    }
  }
}
