class SentencesController < ApplicationController
  before_action :find_sentence, except: [:index, :new, :create]
  before_action :find_story
  #, only: [:create, :new, :update]
  def new
    @image = Image.random
    @sentence = Sentence.new
  end

  def create
    @sentence = @story.sentences.new(sentence_params)
    if @sentence.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  def index
    @sentences = Sentence.all
  end

  private

  def find_sentence
    @sentence = Sentence.find(params[:id])
  end
  def find_story
    @story = Story.find(params[:story_id])
  end
  def sentence_params
    params.require(:sentence).permit(:content, :user_id, :image_id, :image_content)
  end
end
