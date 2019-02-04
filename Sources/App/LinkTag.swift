//
//  LinkTag.swift
//  App
//
//  Created by Jose Reyes on 1/30/19.
//

import Foundation
import Async
import Leaf

public final class LinkTag: TagRenderer {
  public func render(tag parsed: TagContext) throws -> EventLoopFuture<TemplateData> {
    try parsed.requireParameterCount(1)
    
    return Future.map(on: parsed.container) {
      if let dict = parsed.parameters[0].dictionary, let id = dict["id"]?.string, let slug = dict["slug"]?.string {
        return .string("/read/\(id)/\(slug)")
      } else {
        return .null
      }
    }
  }
}
