#!/usr/bin/env ruby

require "rubygems"
require "pp"
require File.expand_path('../../config/environment', __FILE__)

game = TowerDefence::Game.new
map = TowerDefence::Map.new('001')
puts map
game.run