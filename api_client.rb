

puts "ingrese El cuerpo de la publicacion"
Post = gets.chomp

require 'faraday'

client = Faraday.new(url:'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    config.token_auth('8405eb1800100429ecb1be5a15dcf7ab')
end

response = client.post do |req|
    req.url'/api/v1/posts'
    req.headers['Content-type']='application/json'
    req.body = '{"post":{"body":"'+Post+'"}}'
end

require 'oj'


    
puts Oj.load(response.body)
puts response.status