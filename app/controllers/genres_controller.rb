class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end
    def new
        @genre = Genre.new
    end
    def create
        genre = Genre.create(genre_params(:name))
        redirect_to genre_path(genre)
    end
    def show
        genre_id
    end
    def edit
        genre_id
    end
    def update
        genre_id
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    private
    def genre_id
        @genre = Genre.find(params[:id])
    end

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end
end
