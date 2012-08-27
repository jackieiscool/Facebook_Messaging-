# def facebook_user
#    (session[:fb_access_token] && session[:fb_user_uid]) ? FBGraph::Client.new(:client_id => GRAPH_APP_ID, :secret_id => GRAPH_SECRET, :token => session[:fb_access_token]).selection.me.info! : nil
#  end

# config.gem 'omniauth'
# config.gem 'fbgraph'
# config.gem 'omniauth-facebook'
#
# GRAPH_APP_ID = '470247609666517'
# GRAPH_SECRET = 'ea8eb2558cc6b916cc9ff13ab5458fc8'
#
# facebook_user = FbGraph::Client.new(:client_id => GRAPH_APP_ID, :secret_id => GRAPH_SECRET, :token => session[:fb_access_token])
#
# facebook_user.name
# facebook_user.friends

# auth = FbGraph::Auth.new(CLIENT_ID, CLIENT_SECRET)
# auth.from_cookie(cookies) # Put whole cookie object (a Hash) here.
# auth.user.fetch