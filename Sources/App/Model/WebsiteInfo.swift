//
//  WebsiteMetadata.swift
//  App
//
//  Created by Jose Reyes on 2/22/19.
//

import Foundation

/// Website info for meta tags
struct WebsiteInfo: Codable {
  /// The title that will be used as a page title in the browse and in unfurls across the web e.g. "Erin's Portfolio"
  var title: String
  /// URL for this portfolio e.g. "http://erinsportfolio.com"
  var portfolioURL: String
  /// Comma separate string of keywords for SEO e.g. "iOS, Developer, Contractor, Designer"
  var keywords: String?
  /// The location inside the Public folder that points to the image that will be used to
  /// represent your site in link previews aka "/images/screenshot/website.png"
  var metatagImageLocation: String?
}
