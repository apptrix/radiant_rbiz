require 'rack/utils'
module Middleware
class CartAuthTokenMiddleware
  def initialize(app)
    @app = app    
  end

  def call(env)
    #if env['HTTP_USER_AGENT'] =~ /^(Adobe|Shockwave) Flash/
    if env['PATH_INFO'] =~ /cart/
    status, headers, response = @app.call(env)
    #token = response.session['_csrf_token']
    #@app
    end
  end
end
end  