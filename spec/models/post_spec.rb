require 'rails_helper'

RSpec.describe Post, type: :model do  # type is model
  context 'with valid attributes' do
    it 'is valid' do
      post = Post.new(title: 'My First Post', content: 'Hello, world!')
      expect(post).to be_valid
    end
  end

  context 'with invalid attributes' do 
    # Context is a way to group tests together
    it 'is invalid without a title' do
        post = Post.new(content: 'Hello, world!')
        expect(post).to be_invalid
    end

    it 'is invalid without a content' do
        post = Post.new(title: 'My second post')
        expect(post).to be_invalid
    end
  end
end