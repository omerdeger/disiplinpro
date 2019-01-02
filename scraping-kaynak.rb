


# Bu kaynak https://ide.c9.io/rorycawley/webscraping adresinden alınmıştır.

# http://readysteadycode.com/howto-scrape-websites-with-ruby-and-mechanize
# http://ruby.bastardsbook.com/chapters/html-parsing/
# http://ruby.bastardsbook.com/chapters/mechanize/
# http://thaiwood.io/movie-night-and-bacon-a-mechanize-tutorial-with-examples/
# http://ruby.about.com/od/mechanize20handbook/a/The-Page-Class_5.htm
# http://stackoverflow.com/questions/25895576/ruby-parse-a-link-info-from-nokogirixmlnodeset
# http://codereview.stackexchange.com/questions/69800/refactoring-a-crawler
# http://www.icicletech.com/blog/web-scraping-with-ruby-using-mechanize-and-nokogiri-gems
#
# Separate out the things that change from those that stay the same
# Program to an interface, not an implementation
# Prefer composition over inheritance
# Delegate, delegate, delegate


require 'mechanize'
require 'rubygems'
require 'nokogiri' 
require 'open-uri'
require 'logger'


# Superclass that also acts as factory
# This contains the interface for scraping and everything that doesn't change
class RaceResultsScraper
    
    # This is what we'll store the results in
    RaceResult = Struct.new(:date, :name, :resultsURL)
    @all_race_results =  nil
    
    # This is the Mechanize scraper
    @agent = nil
    
    def initialize()
        # create the scraper
        @agent = Mechanize.new { |agent| 
            agent.user_agent_alias = 'Windows Chrome'
        }
        
        # redirect the output to STDOUT
        @agent.log = Logger.new(STDOUT)
    end
    
    
    def self.create type
        case type 
        when :Premiertimingsystems
            PremiertimingsystemsRaceResultsScraper.new
        else
            raise "Bad log race results type: #{type}"
        end
    end
    
    def self.create(name)
        classified_name = name.to_s.split('_').collect!{ |w| w.capitalize }.join
        Object.const_get(classified_name).new
    end
end



# This class is a scraper specific to Premiertimingsystems
# The scraper specific to this site is in here
class PremiertimingsystemsRaceResultsScraper < RaceResultsScraper
    # This is where we start scraping from
    WEBSITE_SOURCE = 'http://www.racetimer.se/en?layout=precision_timing'
    
    # This just reveals the hierarchy for debugging
    def display
        puts "I'm a Premiertimingsystems Race Results Scraper!"
    end
    
    # Performs the scrapping on the site
    def scrape()
        @all_race_results = []
        
        # download and parse the webpage
        page = @agent.get(WEBSITE_SOURCE)
        
        # Get all of the dates they are in spans
        date_spans = @agent.page.search("div#find_competition_results div#latest table tr[1] td[1] span")
        
        # Get all of the links to the race results for the race names and links to the races
        race_name_and_resulturls = page.search("div#find_competition_results div#latest table tr[1] td[2] a")
    
        # debugginh
        pp date_spans.class
        
        # Sanity check
        exit if date_spans.size != race_name_and_resulturls.size         
        
        # Iterates over the two results and creates one array of objects
        i=0
        while i < date_spans.size
            # Create a new race results
            current_race = RaceResult.new      
            
            # Get the data and put it into 
            current_race.date = date_spans[i].text.strip
            current_race.name = race_name_and_resulturls[i].text.strip
            current_race.resultsURL = race_name_and_resulturls[i].attributes["href"].value
    
            # Add it to the array
            @all_race_results << current_race
            
            # debugging
            pp current_race
            
            i+=1
        end        
    end
end

# This creates a new race results scraper
results_scraper = RaceResultsScraper.create(:premiertimingsystems_race_results_scraper)
results_scraper.scrape()
