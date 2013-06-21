# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def section( name )
  Section.where( :name => name ).first
end

Section.create([
  { :name => "Command" },
  { :name => "Engineering" },
  { :name => "Science" },
  { :name => "Tactical" },
  { :name => "Transporter Room"},
  { :name => "Medical" },
  { :name => "Other" }
  ])

Officer.create([

  {
    :rank => "Captain",
    :name => "Jean-Luc Picard",
    :section => section( "Command" )
  },

  {
    :rank => "Commander",
    :name => "William T. Riker",
    :section => section( "Command" )
  },

  {
    :rank => "Lt. Commander",
    :name => "Data",
    :section => section( "Science" )
  },

  {
    :rank => "Lt.",
    :name => "Worf",
    :section => section( "Tactical" )
  },

  {
    :rank => "Lt. Commander",
    :name => "Deanna Troi",
    :section => section( "Other" )
  },

  {
    :rank => "Lt. Commander",
    :name => "Dr. Beverly Crusher"
  },

  {
    :rank => "Lt.",
    :name => "Geordie LaForge"
  },

  {
    :rank => "Ensign",
    :name => "Wesley Crusher"
  }

  ])