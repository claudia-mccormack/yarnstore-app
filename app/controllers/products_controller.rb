class ProductsController < ApplicationController
  def all_products
    @all_products = Yarn.all
  end

  def stroll
  end

  def hawthorne
  end

  def stripey
  end

  def comfy
  end

  def gloss
  end

end
