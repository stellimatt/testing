#!/usr/bin/env ruby

require 'pty'

command = 'wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

PTY.spawn(command) do |output,_input,pid| 
  puts output.read
  Process.wait(pid)
end
