module ApplicationHelper
	def current_user_has_role?(role)
		return false if role.blank? || current_user.blank?

		current_user.has_role? role
	end
end
