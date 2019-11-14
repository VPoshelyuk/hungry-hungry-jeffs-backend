class Api::V1::GamesController < ApplicationController
    def index
        games = Game.all.sort_by{|game| game.score}.reverse.first(10)
        render json: GameSerializer.new(games)
    end

    def create
        game = Game.new
        game.update(game_params)
        if game.save
            render json: GameSerializer.new(game), status: :accepted
        else
            render json: { errors: game.errors.full_messages }, status: :unprocessible_entity
        end
    end

    private

    def game_params
        params.permit(:level, :score, :user_id)
    end
end
 