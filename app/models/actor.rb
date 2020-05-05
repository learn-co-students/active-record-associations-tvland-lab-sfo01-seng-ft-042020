class Actor < ActiveRecord::Base
    has_many :characters 
    has_many :shows, through: :characters
    def full_name 
        full_name = "#{self.first_name} #{self.last_name}"
    end 
    def list_roles 
        array = []
        character = self.characters.map {|characters| characters.name}
        shows = self.shows.map {|show| show.name}
        array << character.concat(shows).join(' - ')
    end 
end