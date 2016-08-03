class Search
  attr_reader :results, :search_call

  def initialize(search_term)
    @search_term = search_term
    @results = []
    @search_call = NYTimesAPIWrapper.new
  end

  def keyword_finder
    self.search_call.article_hash["response"]["docs"].each do |article|
      article["keywords"].each do |keyword_hash_element|
        if keyword_hash_element["value"].downcase == @search_term
          @results << article
        end
      end
    end
  end

  def article_finder
  end

end
