require 'rails_helper'

RSpec.describe Review, type: :model do
  before do
    @review = FactoryBot.build(:review)
  end

  it 'score、contentが存在すれば投稿できること' do
    expect(@review).to be_valid
  end

  it 'scoreが必須であること' do
    @review.score = nil
    @review.valid?
    expect(@review.errors.full_messages).to include("Score can't be blank")
  end

  it 'contentが空でも投稿できること' do
    @review.content = nil
    expect(@review).to be_valid
  end
end
