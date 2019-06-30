class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end
    def new
        @artist = Artist.new
    end
    def create
        artist = Artist.create(artist_params(:name, :bio))
        redirect_to artist_path(artist)
    end
    def show
        @artist = find_by_id(params[:id])
    end

    def edit
        @artist = find_by_id(params[:id])
    end

    def update
        artist = find_by_id(params[:id])
        artist.update(artist_params(:name, :bio))
        redirect_to  artist_path(artist)
    end

    private

    def find_by_id(id)
        @artist = Artist.find(id)
    end

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end
