#hours year
# min decade
# age in seconds
#seconds to years

require 'date'

yearhours = 365 * 24
yearmins = yearhours * 60
yearsecs = yearmins * 60
jeremyyears = 1136086041/(60*60*24*365)

puts "In one year there are #{yearhours} hours per year}"
puts "In a decade, there are #{10*yearmins}"
puts "Nicole is #{Time.now.to_i - Date.new(1992,7,9).to_time.to_i} seconds old"
puts "Jeremy is #{jeremyyears} years old? No way, he looks maybe 34 at most!"
