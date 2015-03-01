class BlogsController < ApplicationController
  def index
    
  end
  
  def count_down
    @future = Date.new(2015,9,6)
    @past = Date.new(2014,10,17)
    @now = Date.today
    @overall = (@future - @past)
    @zamnou = (@now - @past).to_i
    @procenta = ((@zamnou.to_f / @overall)*100).round(2)
  end
end