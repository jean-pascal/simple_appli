require 'spec_helper'

describe UsersController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  # Ici on ajoute un test sur presence de la methode
#  it "devrait avoir le titre correct" do
 #     get 'new'
  #    response.should have_selector("title", :content => "Inscription")
   # end

end
