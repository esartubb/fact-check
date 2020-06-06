require 'rails_helper'

RSpec.describe Submission, type: :model do
  context "when validated" do
  	it { is_expected.to validate_presence_of(:url) }
  	it { is_expected.to validate_presence_of(:excerpt) }
  end
end
