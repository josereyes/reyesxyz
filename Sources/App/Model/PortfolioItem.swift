//
//  Content.swift
//  App
//
//  Created by Jose Reyes on 2/20/19.
//

import Foundation

struct PortfolioItem: Codable {
  /// The name of the company or project for this portfolio item
  let projectName: String
  /// Path to image or video
  let mediaURLPath: String
  /// Path to Icon's file
  let iconURLPath: String?
  /// Whether the content is an image or video
  let mediaType: MediaType
  /// Whether the media is an iPhoneX video, iPhone or Desktop
  let contentType: ContentType
  /// The role(s) you partook in the project (up to 3)
  var role: String
  /// A longform description of the project
  let description: String
  /// Preferred background color gradient
  let backgroundColor: ColorType?
}

/// A container for various Portfolio Items for easy decoding
struct PortfolioItems: Codable {
  let items: [PortfolioItem]
}
