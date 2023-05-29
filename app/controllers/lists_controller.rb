class ListsController < ApplicationController
  def index
    @lists = List.all
    @background_images = [
      'horrormovies.avif',
      'Le-Loup-de-Wall-Street-1',
      'Classicmovies.avif'
      # Ajoutez plus de noms de fichiers d'images selon le nombre de listes
    ]

    render 'index'
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path, notice: 'La liste a été supprimée avec succès.'
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
