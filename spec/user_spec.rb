require 'spec_helper'

describe User do
  it { should have_many :friendships }
  it { should have_many :friends }
  it { should validate_presence_of :name }
  it { should have_many :posts }
end
