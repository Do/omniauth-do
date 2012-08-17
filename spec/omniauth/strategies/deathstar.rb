require 'spec_helper'

describe OmniAuth::Strategies::Deathstar do
  subject do
    OmniAuth::Strategies::Deathstar.new({})
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://do.com")
    end
  end
end
