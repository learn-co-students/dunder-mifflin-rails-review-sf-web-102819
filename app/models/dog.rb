class Dog < ApplicationRecord
    has_many :employees
    validates :name, presence: true
    validates :age, presence: true

    
end
