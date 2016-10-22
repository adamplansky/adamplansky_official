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

  def letsencrypt
    #render text: "9QmtSh28jf6ZJ73NB3H7qeUd65mSMfkWx_oJ-WDcE4I.iCc-U21ZSYsn3HU_PKeUmBe-fCYkBejsiePbomWUjvU"
    render text: "wciDkBzChDKhcUwv7McWfDyVxZfTfw5JVBPu4F9lmrw.iCc-U21ZSYsn3HU_PKeUmBe-fCYkBejsiePbomWUjvU"
  end
end
