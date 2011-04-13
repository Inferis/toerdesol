require 'rdiscount'

class PagesController < ApplicationController
  
  def rendercontent
    markdown = RDiscount.new(string = File.open(File.join(RAILS_ROOT, 'db', self.action_name + '.md'), 'rb') { |file| file.read })
    @content = markdown.to_html
    render 'page'
  end
  
  def index 
    self.rendercontent 
  end
  
  def koers
    self.rendercontent 
  end

  def parcours
    self.rendercontent 
  end

  def regels
    self.rendercontent 
  end
  
  def geschiedenis
    self.rendercontent 
  end

  def fotos
    self.rendercontent 
  end

  def vrienden
    self.rendercontent 
  end

end
