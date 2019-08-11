require 'watir'

browser = Watir::Browser.new

browser.goto 'http://localhost:3000/'

puts "Case 1 -- Test Goto factories exist"
if browser.text.include?("Go to Factories")
  puts "Test passed!"
else
  puts "Test failed!"
end

puts "Case 2 click -- Goto factories exist"
browser.link(:text =>"Go to Factories").wait_until(&:present?).click
browser.screenshot.save 'Case2-factories-screen.png'
browser.close