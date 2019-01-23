require 'bundler'
Bundler.require
$:.unshift File.expand_path('./../lib', __FILE__)
require 'router.rb'
require 'gossip.rb'
require 'view.rb'
require 'controller.rb'

Router.new.perform