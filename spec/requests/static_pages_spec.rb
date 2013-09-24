require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Ultimate Media API') }
    it { should have_title("UM Data") }
  end
end