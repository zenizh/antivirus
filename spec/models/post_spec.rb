require 'spec_helper'

describe Post do
  context 'when content is valid' do
    let(:post) { Post.new(content: 'valid content') }

    it 'should be valid' do
      expect(post).to be_valid
    end
  end

  context 'when content equals profane word' do
    let(:post) { Post.new(content: 'foo') }

    it 'should not be valid' do
      expect(post).not_to be_valid
    end
  end

  context 'when content includes profane word' do
    let(:post) { Post.new(content: 'foobarbaz') }

    it 'should not be valid' do
      expect(post).not_to be_valid
    end
  end
end
