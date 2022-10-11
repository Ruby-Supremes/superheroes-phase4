class HeroesController < ApplicationController
    def index
        heros = Hero.all
        render json: heros
      end
    
      # GET /heeros/:id
      def show
        hero = Hero.find_by(id: params[:id])
        if hero
          render json: hero
        else
          render json: { error: "Hero not found" }, status: :not_found
        end
      end

    private 
    def not_found_response
        render json: {error: "Hero_not_found"}, status: :not_found
    end

end