#!/usr/bin/env ruby

require 'websocket-client-simple'

# ws = WebSocket::Client::Simple.connect 'ws://localhost:8080'
ws = WebSocket::Client::Simple.connect 'ws://35.186.213.227:80'

ws.on :message do |msg|
  puts msg.data
end

ws.on :open do
  ws.send 'hello!!!'
end

ws.on :close do |e|
  p e
  exit 1
end

ws.on :error do |e|
  p e
end

# loop do
#   ws.send STDIN.gets.strip
# end

600.times do |n|
  ws.send n
  sleep 1
end
