module.exports = (env) ->
  class RedirectFrontend extends env.plugins.Plugin

    init: (app, server, @config) =>
      _this = this

      for route in config.routes
        app.get route.path, (req, res, next) ->
          res.redirect route.redirect

  return new RedirectFrontend