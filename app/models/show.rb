require 'pry'
class Show < ActiveRecord::Base
    has_many :characters 
    has_many :actors, through: :characters
    belongs_to :network
    def actors_list
        #binding.pry
        #fullname = 
        self.actors.map {|names| names.full_name}
    end 
end