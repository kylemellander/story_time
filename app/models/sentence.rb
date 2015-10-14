class Sentence < ActiveRecord::Base
  belongs_to :story

  validates :content, presence: true, length: {maximum: 144}
end
