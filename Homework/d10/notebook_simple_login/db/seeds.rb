# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



puts "Creating courses..."

Course.delete_all

Course.create name: "iXperience", instructor: "Brian Bugh" , time: "Weekdays, 9:30-16:00" ,additional: "Programming is the most broadly applicable skill that you can learn right now."
Course.create name: "Statistics 110", instructor: "Joe Blitzstein" , time: "Weekdays, 11:00 - 12:00" ,additional: "This is a thinking course..."
