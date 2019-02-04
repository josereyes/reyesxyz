//
//  MarkdownTAG.swift
//  App
//
//  Created by Jose Reyes on 1/30/19.
//

import Foundation
import Async
import Leaf
import Markdown

public final class MarkdownTag: TagRenderer {
  public func render(tag parsed: TagContext) throws -> EventLoopFuture<TemplateData> {
    try parsed.requireParameterCount(1)
    
    return Future.map(on: parsed.container) {
      if let str = parsed.parameters[0].string {
        let trimmed = str.replacingOccurrences(of: "\r\n", with: "\n")
        let md = try Markdown(string: trimmed)
        let doc = try md.document()
        
        return .string(doc)
      } else {
        return .null
      }
    }
  }
}
