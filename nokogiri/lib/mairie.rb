require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_townhall_email(url)
  page = Nokogiri::HTML(open(url))
  town_link = []
  page.css("a[class = 'lientxt']").each { |node| town_link.append(node.attr('href'))}
  town_link.each { |term| term.slice!(0)}
  puts town_link
  email = []
  for i in town_link
    page_sec = Nokogiri::HTML(open("http://annuaire-des-mairies.com".concat(i)))
    email.append(page_sec.css('main section[2] div table tbody tr[4] td[2]').text)
  end
  puts email
end

get_townhall_email("http://annuaire-des-mairies.com/val-d-oise.html")

#//*[@id="voyance-par-telephone"]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[1]
#//*[@id="voyance-par-telephone"]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[2]
#//*[@id="voyance-par-telephone"]/table/tbody/tr[2]/td/table/tbody/tr/td[2]/p/a[1]
#/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]