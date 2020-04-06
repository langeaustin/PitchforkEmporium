class PagesController < ApplicationController #InheritedResources::Base

  # private

  # def page_params
  #   params.require(:page).permit(:title, :content, :permalink)
  #  end

  def static
    @page = Page.find_by(permalink: params[:permalink])
  end

end
