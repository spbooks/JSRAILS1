class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  def index
    @pages = Page.all
  end

  def about
  end

  def new
   @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to action: :show, id: @page.id
  end

  def show
  end

  private
    
  # Ue callbacks to share common setup or constraints
  # between actions
  def set_page
    @page = Page.find(params[:id])
  end

  # Never trust parameters from the scary intennet
  # Only allow the white list through
  def page_params
    params.require(:page).permit(:title, :slub, :content)
  end
end
