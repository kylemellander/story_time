class StoriesController < ApplicationController
  before_action :find_story, except: [:index, :new, :create]

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to stories_path
    else
      render :new
    end
  end

  def show
    @image = Image.random
    # byebug
  end

  def edit
  end

  def update
    if @story.update(story_params)
      redirect_to stories_path
    else
      render :edit
    end
  end

  def destroy
    @story.destroy
    redirect_to stories_path
  end

  private
  def story_params
    params.require(:story).permit(:title)
  end
  def find_story
    @story = Story.find(params[:id])
  end
end
