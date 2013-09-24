require 'spec_helper'

describe Keyword do

  before { @keyword = Keyword.new(name: "Example Keyword") }

  subject { @keyword }

  it { should respond_to(:name) }

  it { should be_valid }

  describe "when name is not present" do
    before { @keyword.name = " " }
    it { should_not be_valid }

    before { @keyword.name = nil }
    it { should_not be_valid }
  end

end