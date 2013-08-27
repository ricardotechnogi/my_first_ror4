class StaticPagesController < ApplicationController
  def home
  	@adherentes = Adherente.all
  end

  def codigo
  end
end
