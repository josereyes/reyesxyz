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
  middlewareConfig.use(FileMiddleware.self)
  services.register(middlewareConfig)
  
  var tags = LeafTagConfig.default()
  tags.use(MarkdownTag(), as: "markdown")
  tags.use(LinkTag(), as: "link")
  services.register(tags)
}
