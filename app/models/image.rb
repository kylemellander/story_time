class Image < ActiveRecord::Base
  belongs_to :story

  def self.random
    image = Image.find(rand(593))
    image.content
  end
end
