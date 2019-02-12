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

  anime_list = Unirest.get "https://www.animenewsnetwork.com/encyclopedia/reports.xml?id=155&type=anime&nlist=all"
  anime_list_doc = Nokogiri::XML(anime_list.body)
  anime_list_doc.remove_namespaces!
  anime_list_doc.xpath('//item').each do |item|
    ani = Anime.new
    ani.title = item.at_xpath('name').content
    id = item.at_xpath('id').content
    anime = Unirest.get "https://www.animenewsnetwork.com/encyclopedia/api.xml?anime=#{id}"
    anime_doc = Nokogiri::XML(anime.body)
    puts anime_doc.css('Genres')
    # anime_doc.xpath('//info').each do |p|
      # genre = Genre.find_by(name: p.content)
      #   unless genre.nil?
      #    ani.genres << genre
      #   end
      # end
      anime_doc.xpath('//staff').each do |staff|
        dir = staff.at('task').content
        puts dir
        if dir == "Director"
          dir = Director.find_or_create_by(name: staff.at('person').content)
          ani.director =  dir
          puts ani.director
        end
      end
    # ani.save
  end


# check = true
# id = 1
# while check == true
#   doc1 = Unirest.get "https://www.animenewsnetwork.com/encyclopedia/api.xml?anime=#{id}"
#   doc = Nokogiri::XML(doc1.body)
#   doc.remove_namespaces!
#   anime = doc.at_xpath('//anime')
#   # puts anime
#
#   anime.xpath('//info').each do |p|
#     # puts p.at_xpath('//main').content
#     puts p.content
#   end
#   # puts anime.search('info')
#
#   # puts "ID   = " + anime.at_xpath('//info').content
#
#   # puts "Name = " + anime.at_xpath('name').content
#   id+= 1
#   check = false
# end
