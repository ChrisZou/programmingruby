#!/usr/bin/env ruby -wA
require 'fileutils'
files = Dir['hello*']
FileUtils::rm files, verbose: true
