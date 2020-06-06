class Api::V1::SubmissionsController < ApplicationController
	def create
		@submission = Submission.new(submission_params)

		if @submission.save
			render json: @submission, status: :created
		else
			render json: @submission.errors, status: :unprocessable_entity
		end
	end

	def submission_params
		params.required(:submission).permit(:url, :excerpt)
	end
end
