class Employee < ApplicationRecord
    belongs_to :dog

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :office, presence: true
    #img url should be optional
    validates :dog_id, presence: true
    validates :title, presence: true, uniqueness: true
    validates :alias, presence: true#, uniqueness: true


    def full_name #helper
        self.first_name + " " + self.last_name
    end

    def my_owners #useful method
        self.full_name + ". " 
    end
end
