class PagesController < ApplicationController
  def index
    @page = Page.where(slug: 'index').first
  end

  def about
    @page = Page.where(slug: 'about').first
  end

  def portfolio
  end
end
