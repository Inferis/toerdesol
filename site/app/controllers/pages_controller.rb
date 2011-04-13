require 'rdiscount'

class PagesController < ApplicationController
  def index 
    markdown = Markdown.new(string = File.open(File.join(RAILS_ROOT, 'database', 'index.md'), 'rb') { |file| file.read })
    @content = markdown.to_html
    render 'page'
  end
  
  def koers
    render 'page'
  end

  def parcours
    render 'page'
  end

  def regels
    render 'page'
  end
  
  def geschiedenis
    render 'page'
  end

  def fotos
    render 'page'
  end

  def vrienden
    render 'page'
  end

end
