class WelcomeController < ApplicationController
  def index
  end

  def vote
    vote_value = ActiveRecord::Base.sanitize(params["vote_value"])
    ActiveRecord::Base.connection.execute("UPDATE charities SET votes = votes+1 WHERE id= #{vote_value}")

    redirect_to({:action => :index}, :notice => "Thanks for your vote!")
  end
end

