require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://coinmarketcap.com/fr/all/views/all/"))   

crypto = []
for i in 0...100
  key = page.css("table tbody tr td[2]")[i].text  # => Nokogiri::HTML::Document
  value = page.css("table tbody tr td[5]")[i].text  # => Nokogiri::HTML::Document
  hash = Hash.new
  hash[key] = value
  crypto << hash
end

puts crypto

