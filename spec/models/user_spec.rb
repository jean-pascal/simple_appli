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

require 'spec_helper'

describe User do

	#ici on fait un tour d'inspection general 
  before(:each) do
    @attr = { :nom => "Example User", :email => "user@example.com" }
  end

	# Ici on ajoute test de validation des attributs
  it "devrait creer une nouvelle instance dotee des attributs valides" do
    User.create!(@attr)
  end

	# verif de presence d'un nom valide
  it "devrait exiger un nom" do
	bad_guy = User.new(@attr.merge(:nom => ""))
    	bad_guy.should_not be_valid
  end


	# verif de presence d'un email valide
   it "exige une adresse email" do
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.should_not be_valid
  end


       it "devrait accepter une adresse email valide" do
    adresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    adresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      valid_email_user.should be_valid
    end
  end

  it "devrait rejeter une adresse email invalide" do
    adresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    adresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end


	# Verif unicite d un mail
	it "devrait rejeter un email double" do
    # Place un utilisateur avec un email present dans la BD.
    User.create!(@attr)
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
  end

	it "devrait rejeter une adresse email invalide jusqu'à la casse" do
    upcased_email = @attr[:email].upcase
    User.create!(@attr.merge(:email => upcased_email))
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
  end


end
