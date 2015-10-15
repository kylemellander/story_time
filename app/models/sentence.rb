class Sentence < ActiveRecord::Base
  belongs_to :story

  validates :content, presence: true, length: {maximum: 144}

  def user_name(email='')
    m = /^.*(?=(@))/.match(email)
    m[0] if m else nil
  end
end
