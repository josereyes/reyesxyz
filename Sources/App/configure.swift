import Vapor
import Leaf

/// Called before your application initializes.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#configureswift)
public func configure(
  _ config: inout Config,
  _ env: inout Environment,
  _ services: inout Services
  ) throws {
  // Register routes to the router
  let router = EngineRouter.default()
  try routes(router)
  services.register(router, as: Router.self)
  
  try services.register(LeafProvider())
  config.prefer(LeafRenderer.self, for: ViewRenderer.self)
  
  var middlewareConfig = MiddlewareConfig()
  services.register(StreamableFileMiddleware.self)
  middlewareConfig.use(StreamableFileMiddleware.self)
  services.register(middlewareConfig)
  
//  var tags = LeafTagConfig.default()
//  tags.use(MarkdownTag(), as: "markdown")
//  tags.use(LinkTag(), as: "link")
//  services.register(tags)
  
//  let serverConfigure = NIOServerConfig.default(hostname: "0.0.0.0", port: 8080)
//  services.register(serverConfigure)
}
