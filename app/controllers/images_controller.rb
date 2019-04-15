class ImagesController < ApplicationController
  before_action :authenticate_user!


  def create
    @imgae = Image.new
  end
end
