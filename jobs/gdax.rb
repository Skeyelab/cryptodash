require 'net/http'
require 'json'
require 'uri'

SCHEDULER.every '5s', allow_overlapping: false do
  uri = URI.parse('https://api.gdax.com/products/BTC-USD/ticker')
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  json_response = JSON.parse(response.body)
  btc_price = (json_response['bid'].to_f + json_response['ask'].to_f)/2
  btc_price = '%.2f' % btc_price.to_f
  #puts btc_price
  send_event('btcprice', { value: btc_price.to_f} )
end
SCHEDULER.every '5s', allow_overlapping: false do
  uri = URI.parse('https://api.gdax.com/products/ETH-USD/ticker')
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  json_response = JSON.parse(response.body)
  eth_price = (json_response['bid'].to_f + json_response['ask'].to_f)/2
  eth_price = '%.2f' % eth_price.to_f
  #puts btc_price
  send_event('ethprice', { value: eth_price.to_f} )
end
SCHEDULER.every '5s', allow_overlapping: false do
  uri = URI.parse('https://api.gdax.com/products/LTC-USD/ticker')
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  json_response = JSON.parse(response.body)
  ltc_price = (json_response['bid'].to_f + json_response['ask'].to_f)/2
  ltc_price = '%.2f' % ltc_price.to_f
  #puts ltc_price
  send_event('ltcprice', { value: ltc_price.to_f} )
end
SCHEDULER.every '5s', allow_overlapping: false do
  uri = URI.parse('https://api.gdax.com/products/LTC-BTC/ticker')
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  json_response = JSON.parse(response.body)
  ltc_btc_price = (json_response['bid'].to_f + json_response['ask'].to_f)/2
  ltc_btc_price = '%.5f' % ltc_btc_price.to_f
  puts ltc_btc_price
  send_event('ltcbtcprice', { value: ltc_btc_price.to_f} )
end
SCHEDULER.every '5s', allow_overlapping: false do
  uri = URI.parse('https://api.gdax.com/products/ETH-BTC/ticker')
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  json_response = JSON.parse(response.body)
  eth_btc_price = (json_response['bid'].to_f + json_response['ask'].to_f)/2
  eth_btc_price = '%.5f' % eth_btc_price.to_f
  puts eth_btc_price
  send_event('ethbtcprice', { value: eth_btc_price.to_f} )
end
