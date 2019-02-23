//
//  ColorType.swift
//  App
//
//  Created by Jose Reyes on 2/20/19.
//

import Foundation

/// Background types of color that will be used to render the portfolio side of the page
///
/// - orange: linear-gradient(122deg, rgba(254,182,130,1) 0%, rgba(247,142,66,1) 20%, rgba(251,140,59,1) 95%);
/// - blue: linear-gradient(122deg, rgba(40,145,168,1) 0%, rgba(13,72,88,1) 100%);
/// - teal: linear-gradient(122deg, rgba(110,221,201,1) 0%, rgba(28,104,90,1) 95%);
enum ColorType: String, Codable {
  case orange
  case blue
  case teal
}
