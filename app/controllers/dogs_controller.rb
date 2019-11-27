class DogsController < ApplicationController

    def index
        if params[:sort]
            @dogs = Dog.all.sort{ |dog_a, dog_b| dog_b.employees.count <=> dog_a.employees.count }
        else
            @dogs = Dog.all
        end
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        redirect_to dog_path(@dog)
    end

    def show
        @dog = Dog.find(params[:id])
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

end
