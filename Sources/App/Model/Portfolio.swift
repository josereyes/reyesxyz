//
//  Portfolio.swift
//  App
//
//  Created by Jose Reyes on 2/20/19.
//

import Foundation

/// A container struct with the necessary properties to render the page
struct PortfolioInfo: Codable {
  let creator: Creator
  let portfolioItems: [PortfolioItem]
  let websiteInfo: WebsiteInfo
}
