class Submission < ApplicationRecord
	validates :url, :excerpt, presence: true
end
