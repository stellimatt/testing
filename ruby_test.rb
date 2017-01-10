#!/usr/bin/env ruby

require 'pty'

PTY.spawn('sleep 5000') { |output,_input,pid| puts output.read; Process.wait(pid) }
