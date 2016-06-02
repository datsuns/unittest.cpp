#!/usr/bin/env ruby

require 'filewatcher'
require 'pathname'
require 'colorize'
require 'pp'

EXTS  = ['cpp', 'c', 'h']
DIRS  = ['./product', './test']
FILES = ['**/*CMakeLists.txt']
TARGETS = DIRS.map do |d|
  EXTS.map{|e| (Pathname.new(d) + "**/*.#{e}").to_s}
end.flatten + FILES

FileWatcher.new(TARGETS).watch do |f|
  puts ">>> #{f} changed".red
  system "make test"
end
