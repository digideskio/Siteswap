require 'rubygems'
require 'sinatra'
require 'siteswap'

@@siteswap = Siteswap.new(@pattern_length, @objects)

get '/' do
  erb :pattern
end

post '/patterns' do
  # html = ""
  @@siteswap.get_values(params[:props], params[:length], params[:required], params[:excluded])
  erb :valid_patterns
  # html << @@siteswap.all_patterns
  # return html
end