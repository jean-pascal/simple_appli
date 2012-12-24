require 'spec_helper'

describe "LayoutLinks" do


  it "devrait trouver une page Contact '/contact'" do
    get '/contact'
  end

  it "should have an A Propos page '/apropos'" do
    get '/apropos'
  end

  it "devrait trouver une page Aide '/aide'" do
    get '/aide'
  end

  it "devrait avoir une page d'inscription  '/signup'" do
    get '/signup'
  end

end
