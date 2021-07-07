class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    characters = self.characters
    characters.map do |character|
      name = character.name
      show = Show.find_by_id(character.show_id).name
      roles << "#{name} - #{show}"
    end
    roles
  end
  
end

