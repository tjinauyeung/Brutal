# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Building.create([
	{ name: "Unite d'Habitation", location: 'Marseille, FR', build_year: '1952', architect: 'Le Corbusier', image: "http://vblog-jpa.info/wp-content/uploads/2012/04/Thomas_Lewandovski_06.jpg" },

	{ name: 'Torres Blancas', location: 'Madrid, ESP', build_year: '2005', architect: 'Francisco Javier Saenz de Oiza', image: "http://www.cfcsl.com/wp-content/uploads/2013/10/120205-JManterola-TorresBlancas.jpg" },

	{ name: 'El Colegio de Mexico', location: 'Mexico City, MEX', build_year: '1975', architect: 'Abraham Zabludovsky', image: "http://36.media.tumblr.com/e5333721f8ebced0687a0795b05cc17e/tumblr_o10150uLSf1qzglyyo1_1280.jpg" },

	{ name: 'Genex Tower', location: 'Belgrade, SRB', build_year: '', architect: 'Mihajlo Mitrović', image: "https://upload.wikimedia.org/wikipedia/commons/a/aa/Jugotours_Beograd_Dec_2003.jpg" },

	{ name: 'Forum Hotel', location: 'Krakow, PL', build_year: '', architect: '', image: "http://36.media.tumblr.com/17f94b32659e9539e442f5f34c700230/tumblr_n1dinjpqya1suhlbho1_1280.jpg" },

	{ name: 'Druzhba Holiday Center Hal', location: 'Yalta, RUS', build_year: '', architect: '', image: "https://s-media-cache-ak0.pinimg.com/736x/54/91/d8/5491d8e40b6a2efa1104e9a912d02ace.jpg" },

	{ name: 'Poplakov Cafe', location: 'UKR', build_year: '1976', architect: '', image: "http://weirdrussia.com/wp-content/uploads/2015/04/Het-Poplakov-Cafe-1976.jpg" },

	{ name: 'Hotel Uzbekistan', location: 'Tasjkent, UZ', build_year: '1974', architect: 'Steven Holl', image: "https://c2.staticflickr.com/8/7710/16502697923_118a12bd55_b.jpg" },

	{ name: 'Metropolitan Cathedral', location: 'Brasilia, BRA', build_year: '1960', architect: 'Oscar Niemeyer', image: "http://static.thecitypictures.net/cache/1410x1440-3/cathedral-metropolitana-of-brasilia.jpg" },

	]) 

Review.create([
	{ name: 'Tjin Au Yeung', description: 'This building is great!', rating: 5, building_id: 1 },
	{ name: 'Liset van der Kolk', description: 'I am loving the architecture!', rating: 5, building_id: 2 }])