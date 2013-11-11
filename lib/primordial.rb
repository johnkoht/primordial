require "bourbon"
require "primordial/version"

unless defined?(Sass)
  require 'sass'
end

module Primordial
  if defined?(Rails) and defined?(Rails::Engine)
    require "primordial/engine"
  else
    Sass.load_paths << File.expand_path("../../app/assets/stylesheets", __FILE__)
  end
end