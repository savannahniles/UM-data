require 'spec_helper'

describe Association do
  let(:p) { FactoryGirl.create(:program) }
  let(:k) { FactoryGirl.create(:keyword) }
  let(:relationship) { p.relationships.build(keyword_id: k.id) }

  subject { relationship }

  it { should be_valid }
end
