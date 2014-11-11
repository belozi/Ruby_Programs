require 'net/http'

url = URI.parse('http://www.google.com')

Net::HTTP.start(url.host, url.port) do |http|
	req = Net::HTTP::Get.new(url.path)
	puts http.request(req).body
end