require "pry"
class NYTIMESRunner

  def call
    puts "Welcome to NYTimes search API thing!"
    run
  end

  def get_user_input
    gets.chomp.strip
  end

  def run
    puts "What would you like to do? Please select corresponding number."
    puts "1. search by keyword"
    puts "2. search by keyword (sort by weight)"
    puts "3. search by journalist"
    puts "4. search by type"
    puts "5. help"
    puts "6. exit"
    input = get_user_input
    if input.downcase == "1"
      keyword_search
    elsif input == "2"
      #keyword_method_2
    elsif input == "3"
      #keyword_method_3
    elsif input == "4"
      #keyword_method_4
    elsif input == "5"
      #keyword_method_5
    elsif input == "6"
      puts "Goodbye."
    else
      puts "Error. Please try again."
      run
    end
  end

  def keyword_search
    puts "Please enter a search term."
    search_term = get_user_input
    puts "Your search term was #{search_term}, I am searching..."
    new_search = Search.new(search_term.downcase)
    new_search.keyword_finder
    if new_search.results.empty?
      puts "There are no articles with the provided keyword"
    else
      puts "Here are the articles with the provided keyword."

      new_search.results.each_with_index do |object, index|

        object.each do |key, value|
         if key == 'headline'
            puts "#{index+1}: #{main}"
        end
        end
      end
    end
  end

  def array_of_articles

  end
  # def search(input)
  #   search_term = input.split(" ")[0]
  #   puts "Your search term was #{search_term}, I am searching..."
  #   url = "https://twitter.com/search?q=#{search_term}&src=typd&f=realtime"
  #   tweet = ExampleScraper.new(url).example_method.sample
  #   puts "Thank you for your patience. I found this on Twitter:"
  #   puts tweet.example
  # end
  #
  # def help
  #   puts "Type 'exit' to exit"
  #   puts "Type 'help' to view this menu again"
  #   puts "Type anything else to search for a Tweet"
  # end

end
