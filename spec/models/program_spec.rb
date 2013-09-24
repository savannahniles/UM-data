require 'spec_helper'

describe Program do

  before { @program = Program.new(title: "Example Program", tmsId: "000") }

  subject { @program }

  it { should respond_to(:title) }
  it { should respond_to(:tmsId) }

  it { should be_valid }

  describe "when title is not present" do
    before { @program.title = " " }
    it { should_not be_valid }

    before { @program.title = nil }
    it { should_not be_valid }
  end

  describe "when tmsId is not present" do
    before { @program.tmsId = " " }
    it { should_not be_valid }

    before { @program.tmsId = nil }
    it { should_not be_valid }
  end

  describe "when tmsId is already taken" do
    before do
      program_with_same_tmsId = @program.dup
      program_with_same_tmsId.save
    end

    it { should_not be_valid }
  end

end