class PagesController < ApplicationController
  def home
	@titre = "Accueil"
  end

  def contact
	@titre = "Contactez nous !"
  end

  def apropos
	@titre = "A propos"
  end

end
