#!/usr/bin/env ruby


require "rubygems"
require File.dirname(__FILE__) + '/../config/environment'
require "pp"

game = TowerDefence::Game.new
map = TowerDefence::Map.new('001')
puts map
game.run