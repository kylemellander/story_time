require 'rails_helper'

RSpec.describe Sentence, type: :model do
  it { should validate_presence_of :content}
  it { should validate_length_of :content}
  it { should belong_to :story}
end
