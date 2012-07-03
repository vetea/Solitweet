# encoding: utf-8

module PagesHelper

  def title
    html = "Avec SenseTwitt, soutiens les propositions du Mouvement des entrepreneurs sociaux"
    html << ' (<a href="http://www.mouves.org/" target="_blank">Mouves</a>) '
    html << "pour développer l'entrepreneuriat social"
    html.html_safe
  end

end
