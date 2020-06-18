class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def build_network
        char = Network.new(:name => "name")
        # char.build_show(:name => "name").build_network(:call_letters => "call_letters")
        binding.pry
    end

    def say_that_thing_you_say
       "#{self.name} always says: #{self.catchphrase}" 
    end
end