module ApplicationHelper


# Retourner un titre qui s'appuie sur la page.
  def titre
    base_titre = "Simple Application via Ruby On Rails"
    if @titre.nil?
      base_titre
    else
      "#{base_titre} | #{@titre}"
    end
  end

end
