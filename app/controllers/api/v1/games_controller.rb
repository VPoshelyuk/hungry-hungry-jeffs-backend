class Api::V1::GamesController < ApplicationController
    before_action :find_note, only: [:update]
    def index
        @games = Game.all
        render json: @games
    end

    def update
        @note.update(note_params)
        if @note.save
        render json: @note, status: :accepted
        else
        render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
        end
    end

    private

    def note_params
        params.permit(:title, :content)
    end

    def find_note
        @note = Note.find(params[:id])
    end
end
 