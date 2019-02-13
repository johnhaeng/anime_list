# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require "graphql-request"
require 'dotenv/load'
require 'unirest'
require 'nokogiri'

# Studio.create(name: "None")
# Director.create(name: "None")
#
# Genre.create(name: "action")
# Genre.create(name: "adventure")
# Genre.create(name: "comedy")
# Genre.create(name: "drama")
# Genre.create(name: "slice of life")
# Genre.create(name: "fantasy")
# Genre.create(name: "magic")
# Genre.create(name: "supernatural")
# Genre.create(name: "horror")
# Genre.create(name: "mystery")
# Genre.create(name: "psychological")
# Genre.create(name: "romance")
# Genre.create(name: "science fiction")
# Genre.create(name: "tournament")




  #grabbing the xml of ALL the anime from the API, and setting the xml to anime_list
  anime_list = Unirest.get "https://www.animenewsnetwork.com/encyclopedia/reports.xml?id=155&type=anime&nlist=all"
  #setting up nokogiri with the just dowloaded file so we can search through it with nokogiri methods
  anime_list_doc = Nokogiri::XML(anime_list.body)
  anime_list_doc.remove_namespaces!
  # going through each <item> tag which all contain one anime, the item tag and everything within it
  # is set to "item"

  anime_list_doc.xpath('//item').each do |item| # =============================================================================
    title = item.at_xpath('name').content
    ani = Anime.find_by(title: title)
    if ani.episodes || ani.episode_duration
      next
    end
    puts ani.id
    id = item.at_xpath('id').content
    anime = Unirest.get "https://www.animenewsnetwork.com/encyclopedia/api.xml?anime=#{id}"
    anime_doc = Nokogiri::XML(anime.body)
    anime_doc.xpath('//info').each do |p|
      content = p.to_s
      if content.include?("episodes")
         ani.episodes = p.content
      end
      if content.include?("time")
        ani.episode_duration = p.content
      end
    end
    ani.save!
  end
  # anime_list_doc.xpath('//item').each do |item| # =============================================================================
  #   title = item.at_xpath('name').content
  #   puts title
  # if Anime.find_by(title: title)
  #   puts "skipped"
  #   next
  # end
  #   ani = Anime.new
  #   # the title is in the  <name> tag
  #   ani.title = item.at_xpath('name').content
  #   id = item.at_xpath('id').content
  #   # grabbing the id from the <id> tag and using that id to make a get request for all the information of that anime
  #   # then repeate the same thing but with the specific anime
  #   anime = Unirest.get "https://www.animenewsnetwork.com/encyclopedia/api.xml?anime=#{id}"
  #   anime_doc = Nokogiri::XML(anime.body)
  #
  #
  #
  #
  #   # grabing each <info> tag from the xml file and selecting the content that matches with a genre
  #   anime_doc.xpath('//info').each do |p| # ==================================================================================
  #     img = p.at('img')
  #     if !img.nil?
  #       ani.image = img
  #     else
  #       content = p.content
  #       if content.length > 100
  #         ani.summary = content
  #         else
  #           genre = Genre.find_by(name: content)
  #           unless genre.nil?
  #             ani.genres << genre
  #           end
  #         end
  #       end
  #     end # ------------------------------------------------------------
  #
  #
  #     # selecting each <staff> tag, then selecting the <task> tag and checking if the content = director,
  #     # if so set the director with the content in the <person> tag
  #     anime_doc.xpath('//staff').each do |staff| # ==================================================================================
  #       dir = staff.at('task').content
  #       if dir == "Director"
  #         dir = Director.find_or_create_by(name: staff.at('person').content)
  #         ani.director =  dir
  #       end
  #     end# ------------------------------------------------------------
  #
  #     # grabbing the first production
  #     anime_doc.xpath('//credit').each do |credit| # ==================================================================================
  #       dir = credit.at('task').content
  #       if dir == "Production"
  #         dir = Studio.find_or_create_by(name: credit.at('company').content)
  #         ani.studio =  dir
  #         break
  #       end
  #     end# ------------------------------------------------------------
  #
  #
  #     # getting the voice actors from <cast> tag
  #   anime_doc.xpath('//cast').each do |cast| # ==================================================================================
  #     person = cast.at('person').content
  #     actor = VoiceActor.find_or_create_by(name: person)
  #     ani.voice_actors <<  actor
  #   end# ------------------------------------------------------------
  #
  #
  #   if ani.director == nil
  #     ani.director = Director.first
  #   end
  #   if ani.studio == nil
  #     ani.studio = Studio.first
  #   end
  #   ani.save!
  #
  # end# ------------------------------------------------------------
