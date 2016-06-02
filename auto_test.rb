#!/usr/bin/env ruby

require 'filewatcher'
require 'pathname'
require 'pp'

EXTS = ['cpp', 'c', 'h']
DIRS = ['./product', './test']
TARGETS = DIRS.map do |d|
  EXTS.map{|e| (Pathname.new(d) + "**/*.#{e}").to_s}
end.flatten

FileWatcher.new(TARGETS).watch do |f|
  puts ">> #{f} changed"
  system "make test"
end
