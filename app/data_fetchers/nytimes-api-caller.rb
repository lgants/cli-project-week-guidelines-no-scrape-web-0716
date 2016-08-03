require 'pry'
class NYTimesAPIWrapper
  attr_accessor :article_hash


  def initialize
    uri = URI("https://api.nytimes.com/svc/search/v2/articlesearch.json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    uri.query = URI.encode_www_form({
      "api-key" => "600a03a7aa294ca8a9c5ac843ace1690"
    })
    request = Net::HTTP::Get.new(uri.request_uri)
    # binding.pry
    @article_hash = JSON.parse(http.request(request).body)
  end

  # def initialize
  #   # set your NYT Times Newswire API key as an environment variable to run the tests
  #   ENV['NYT_TIMESWIRE_API_KEY']
  #     articles = RestClient.get('"https://api.nytimes.com/svc/search/v2/articlesearch.json"')
  #     @article_hash = JSON.parse(articles)
  # end



end
