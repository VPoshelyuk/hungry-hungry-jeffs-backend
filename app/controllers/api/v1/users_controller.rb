class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def create
        user = User.new
        user.update(user_params)
        if user.save
            render json: UserSerializer.new(user), status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.save
            render json: UserSerializer.new(user), status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end
end
