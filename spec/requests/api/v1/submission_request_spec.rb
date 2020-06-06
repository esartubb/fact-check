require 'rails_helper'

RSpec.describe "Submissions", type: :request do
	let(:valid_submission){ { 'submission' => build(:submission).attributes.except("id", "created_at", "updated_at") } }
	let(:invalid_submission){ { 'submission' => build(:submission, url: '').attributes.except("id", "created_at", "updated_at") } }

	context "when posting a valid submission" do
		it "receive a success code" do
			post api_v1_submissions_url, params: valid_submission

			expect(response.status).to eq(201)
		end
	end

	context "when posting an invalid submission" do
		it "receive an error code" do
			post api_v1_submissions_url, params: invalid_submission

			expect(response.status).to eq(422)
		end
	end
end
