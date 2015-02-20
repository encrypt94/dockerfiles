#!/usr/bin/env ruby
require 'sinatra'
require 'json'
require 'git'
require 'jekyll'

set :bind, '0.0.0.0'
set :source, '/root/clones'
set :destination, '/srv/hosts'

def build_site(name, url)
  puts settings.source
  options = {
    server: false,
    auto: false,
    source: File.join(settings.source, name),
    destination: File.join(settings.destination, name, 'www'),
    plugins: File.join(settings.source, name, '_plugins')
  }
  unless Dir.exists?(options[:source])
    Git.clone(url, name, path: settings.source)
  else
    g = Git.init(options[:source])
    g.pull
  end
  site = Jekyll::Site.new(Jekyll.configuration(options))
  site.process
end

post '/hooks/gogs/jekyll' do
  request.body.rewind
  data = JSON.parse(request.body.read)
  build_site(data["repository"]["name"], data["repository"]["url"])
end
