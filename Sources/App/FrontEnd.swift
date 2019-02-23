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
  
  func loadData(from fileName: String) throws -> Data {
    let directory = DirectoryConfig.detect()
    let configDir = "Public/content"
    
    let data = try Data(contentsOf: URL(fileURLWithPath: directory.workDir)
      .appendingPathComponent(configDir, isDirectory: true)
      .appendingPathComponent(fileName, isDirectory: false))
    
    return data
  }
  
  func getHomePage(req: Request) throws -> Future<View> {
    
    do {
      // Load the necessary data
      let creatorData         = try loadData(from: "creator.json")
      let portfolioItemsData  = try loadData(from: "content.json")
      let websiteInfoData     = try loadData(from: "website.json")
      
      // Decode it
      let decoder = JSONDecoder()
      let creator = try decoder.decode(Creator.self, from: creatorData)
      let portfolioItems = try decoder.decode(PortfolioItems.self, from: portfolioItemsData)
      let websiteInfo = try decoder.decode(WebsiteInfo.self, from: websiteInfoData)
      
      let portfolioInfo = PortfolioInfo(creator: creator, portfolioItems: portfolioItems.items, websiteInfo: websiteInfo)
      
      return try req.view().render("home", portfolioInfo)
    } catch let error {
      print("Unable to load content folder: \(error.localizedDescription)")
      throw error
    }
  }
}
