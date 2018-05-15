# rest-client brings in cleaner ways vs curl.
# httparty is also a good alternative as well.
require 'rest-client'
require 'json'
require 'pry'
require 'active_support/all'

API_ENDPOINT = 'https://api.github.com/users/cchoi12/repos'.freeze

def with_curl
  response = `curl #{API_ENDPOINT}`
  JSON.parse(response)
end

def with_rest
  raw_response = RestClient.get(API_ENDPOINT)
  end_point = JSON.parse(raw_response)
end

# We turn this into a ruby object and reach for active_support to use certain
# methods on the API responses.
def main
  api = with_curl
  puts api.map { |api| api.slice 'html_url', 'full_name' }
end

main
