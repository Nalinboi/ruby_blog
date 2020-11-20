class User < ApplicationRecord
    has_many :article, dependent: :nullify
    has_many :comment, dependent: :nullify
    validates :name, presence: true,
                      length: { minimum: 3 }

    before_save :make_logo

    def make_logo 
        up_name = name.upcase
            
        names_array = up_name.gsub(/\s+/m, ' ').strip.split(" ")

        self.letter = names_array.map { |n| n[0] }.join
    end
    
    
end
  