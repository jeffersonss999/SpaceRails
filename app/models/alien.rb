class Alien < ApplicationRecord
    belongs_to :planet
    belongs_to :ship
    
    has_many :alien_powers
    has_many :powers, through: :alien_powers 
    
    validates_presence_of :name
end
