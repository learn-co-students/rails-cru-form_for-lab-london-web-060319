class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    def new
        @song = Song.new
    end
    def create
        song = Song.create(song_params(:artist_id, :genre_id, :name))
        redirect_to song_path(song)
    end
    def show
        song_id
    end
    def edit
        song_id
    end
    def update
        song_id.update(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    private
    def song_id
        @song = Song.find(params[:id])
    end
    def song_params(*args)
        params.require(:song).permit(*args)
    end
end
