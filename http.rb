require "net/http"
require "uri"

url = URI.parse("https://notify-api.line.me/api/notify")

puts "文字入力"
name = gets

ret = Net::HTTP::Post.new(url)

ret["Authorization"] = "Bearer sQMTP7GxYE470Xqvwi1zJ7WTo0QJbyLc0tEWzMIZjfk"

ret.set_form_data({'message' => name.to_s})

req_options = {
	use_ssl: url.scheme = "https"
}

response = Net::HTTP.start(url.hostname, url.port, req_options) do |http|
	http.request(ret)
end

puts response.body
