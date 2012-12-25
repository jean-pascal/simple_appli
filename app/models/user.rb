# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
        # Ici on securise acces aux attributs :
        attr_accessible :nom, :email

	# Ici on se prepare une expression regul pour verif format du mail
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	# Ici on securise en verifiant presence obligatoire du nom
	validates(:nom, :presence => true,
		#:length   => { :maximum => 60 }) # longueur max du nom
		:length   => { :minimum => 6 }) # longueur mini du nom
	validates :email, :presence => true,
		:format   => { :with => email_regex }, # format du mail
			:uniqueness => { :case_sensitive => false }

end
