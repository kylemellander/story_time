class Sentence < ActiveRecord::Base
  belongs_to :story

  validates :content, presence: true, length: {maximum: 144}
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def user_name(email='')
    m = /^.*(?=(@))/.match(email)
    m[0] if m else nil
  end
end
