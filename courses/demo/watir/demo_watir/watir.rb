require 'watir'
require 'watir-performance'
#https://github.com/windwiny/web_autotest/blob/master/web_autotest.rb

# Test performance
# 10.times do
#    b = Watir::Browser.new :chrome
#    b.goto 'google.com'
#    load_secs = b.performance.summary[:response_time] / 1000
#    puts "Load Time: #{load_secs} seconds."
#    b.close
# end