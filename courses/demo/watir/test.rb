require 'watir'
require 'watir-performance'

# puts "Case 1 -- Test Goto factories exist"
# browser = Watir::Browser.new
# browser.goto 'http://localhost:3000/'
# if browser.text.include?("Go to Factories")
#   puts "Test passed!"
# else
#   puts "Test failed!"
# end
# browser.close
# #End case 1

# puts "Case 2 click -- Goto factories exist"
# browser = Watir::Browser.new
# browser.goto 'http://localhost:3000/'
# browser.link(:text =>"Go to Factories").wait_until(&:present?).click
# browser.screenshot.save 'Case2-factories-screen.png'
# browser.close
# #End case 2

# puts "Case 3 create factory"
# browser = Watir::Browser.new
# browser.goto 'http://localhost:3000/'
# browser.link(:text =>"Go to Factories").wait_until(&:present?).click
# browser.screenshot.save 'Case3-before_create-screen.png'
# browser.link(:text =>"Add new factory").wait_until(&:present?).click

# browser.text_field(:id => "factory_name").set("Con chó con")
# browser.input(:value => 'Create').click
# if browser.text.include?("Con Chó con")
#   puts "Test passed!"
# else
#   puts "Test failed!"
# end
# browser.screenshot.save 'Case3-after_create-screen.png'
# browser.close
# #End case 1


#Case 4 Performance
# Test performance
10.times do
   b = Watir::Browser.new :chrome
   b.goto 'http://localhost:3000/'
   load_secs = b.performance.summary[:response_time] / 1000
   puts "Load Time: #{load_secs} seconds."
   b.close
end