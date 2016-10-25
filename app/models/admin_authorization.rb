class	AdminAuthorization < ActiveAdmin::AuthorizationAdapter

	def autorized?(action, subject = nil)
		user && user.admin?
		
	end
end