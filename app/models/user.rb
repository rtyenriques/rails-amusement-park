class User < ActiveRecord::Base
    has_secure_password
    has_many :rides
    has_many :attractions, through: :rides

    def mood
        if self.nausea > self.happiness
            "sad"
        else 
            "happy"
        end

    end
end

# def mood
#     if self.happiness != nil && self.nausea != nil && self.happiness < self.nausea
#       "sad"
#     else
#       "happy"
#     end
