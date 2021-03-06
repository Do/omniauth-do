require 'spec_helper'

describe OmniAuth::Strategies::Do do
  subject do
    OmniAuth::Strategies::Do.new({})
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://do.com")
    end
  end
end
