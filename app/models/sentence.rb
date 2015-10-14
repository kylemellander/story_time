class Sentence < ActiveRecord::Base
  belongs_to :story

  validates :content, presence: true
end
