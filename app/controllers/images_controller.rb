class ImagesController < ApplicationController
  before_action :authenticate_user!


  def create
    @image = Image.new
  end
end
