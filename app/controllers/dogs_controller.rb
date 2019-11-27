class DogsController < ApplicationController


    def index 
        @dogs = Dog.all 
    end

    def show
        @dog = Dog.find(params[:id])
        @owners = @dog.employees.map{|owner| owner.my_owners}.join
        @employee = Employee.find(params[:id])
    end

   

end
