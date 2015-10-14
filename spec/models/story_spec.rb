require 'rails_helper'

RSpec.describe Story, type: :model do
  it { should validate_presence_of :title}
  it { should have_many :sentences}
  it { should have_many :images}
end
