class ImagesController < ApplicationController
  before_action :find_image, except: [:index]
  before_action :find_story

  def index
    @images = Image.all.sample(6)
  end

  private
  def find_image
    @image = Image.find(params[:id])
  end

  def find_story
    @story = Story.find(params[:story_id])
  end
end
