#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'
require 'trevors-rsp'

program :name, 'RSP - Ruby Spotify Player'
program :version, RSP::VERSION
program :description, 'A Spotify client written in Ruby.'

command :play do |c|
  c.syntax = 'trevors-rsp play [options]'
  c.description = 'Plays a playlist.'
  c.action do |args, options|
    puts 'Playlist mode.'
    args.each do |arg|
      puts "Playing playlist: #{arg}."
    end
  end
end
