# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Building.create([
	{ name: 'De Rotterdam', location: 'Rotterdam, NL', build_year: '2013', architect: 'OMA' },
	{ name: 'Wolff Museum', location: 'Zurich, CH', build_year: '2005', architect: 'Zaha Hadid' }])

Review.create([
	{ name: 'Tjin Au Yeung', description: 'The Rotterdam is great!', rating: 5, building_id: 1 },
	{ name: 'Liset van der Kolk', description: 'The Wolff Museum is awesome!', rating: 5, building_id: 2 }])