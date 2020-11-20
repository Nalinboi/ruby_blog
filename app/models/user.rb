class User < ApplicationRecord
    has_many :article, dependent: :nullify
    has_many :comment, dependent: :nullify
    validates :name, presence: true,
                      length: { minimum: 3 }

    # name = "nalin aswani"
    name.upcase!
    
    names_array = name.gsub(/\s+/m, ' ').strip.split(" ")
    initials = ""
    
    names_array.each do |name|
        initials += name[0]    
    end
    
    logo = initials
    puts initials
    
end
  