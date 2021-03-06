class UsersController < ApplicationController
    def index
        render plain: "Hello world!"
    end

    def create
        user = User.new(params.require(:user).permit(:name, :username))
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: params
    end
end