require 'spec_helper'

describe Post do
    it { should belong_to :author }
    it { should belong_to :recipient }
    it { should validate_presence_of :content }
end
