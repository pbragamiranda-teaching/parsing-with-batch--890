require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
puts "What ingredient you want to search?"
print ">"
ingredient = gets.chomp

url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search(".standard-card-new__article-title").each do |recipe|
  p recipe.text.strip
  p recipe.attributes["href"].value
end

