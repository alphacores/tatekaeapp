class AdminController < ApplicationController
	http_basic_authenticate_with :name => "jack", :password => "jack"  

  def events_index
    @events = Event.find(:all,order:"created_at")
  end
end
