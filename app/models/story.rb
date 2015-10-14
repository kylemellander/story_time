class Story < ActiveRecord::Base
  has_many :images, dependent: :destroy
  has_many :sentences, dependent: :destroy

  validates :title, presence: true
end
