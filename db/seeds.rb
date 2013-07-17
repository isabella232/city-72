# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	MapMarker.delete_all

	lon = -122.431351
	lat = 37.757416
	500.times do |i|
		MapMarker.create!(lon_lat: "POINT(#{lon} #{lat})")
		lon = lon + rand(-0.001..0.001)
		lat = lat + rand(-0.001..0.001)
	end

	Story.create!(main_image_url: "http://placekitten.com/300/170", victim: 'bleh', location: 'bluh')
	Story.create!(main_image_url: "http://placekitten.com/300/170", victim: 'pteh', location: 'ptuh')
	Story.create!(main_image_url: "http://placekitten.com/300/170", victim: 'aweh', location: 'awuh')
	Story.create!(main_image_url: "http://placekitten.com/300/170", victim: 'treh', location: 'truh')

	Kit.create!(title: 'algo', url: 'algi', use_case: 'aewr', image: "http://placekitten.com/300/170")
	Kit.create!(title: 'ewrsfdadf', url: 'algi', use_case: 'aewr', image: "http://placekitten.com/300/170")
	Kit.create!(title: 'qwer', url: 'algi', use_case: 'aewr', image: "http://placekitten.com/300/170")

	Item.create!(category: "Personal", title: 'sgfd', use_case: 'awer', image: "http://placekitten.com/300/170")
	Item.create!(category: "Useful", title: 'sgsdffd', use_case: 'awer', image: "http://placekitten.com/300/170")
	Item.create!(category: "Useful", title: 'rtyt', use_case: 'awer', image: "http://placekitten.com/300/170")
