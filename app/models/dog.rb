class Dog < ApplicationRecord
    has_many :employees

    def order_by
        @employee_num = self.employees.length
    end

end
