require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/booking' )
require_relative( '../models/client' )
require_relative( '../models/event' )
also_reload( '../models/*' )

get '/bookings' do
  @bookings = Booking.all
  erb ( :"bookings/index" )
end

get "/bookings/:id" do
  @bookings = Booking.find(params['id'].to_i)
  erb ( :"bookings/show")
end
