require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  # Ici on ajoute methode pour tester une ...erreur
  # car ... pas de pages ni de methode dans le controller de ce type
  describe "GET 'apropos'" do
    it "devrait reussir" do
      get 'apropos'
      response.should be_success
    end
  end

end
