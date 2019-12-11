require( 'sinatra' )
require( 'sinatra/contrib/all' )
require('pry')

require_relative( './models/customer' )
require_relative( './models/film' )
require_relative( './models/screening' )
require_relative( './models/ticket')

also_reload( './models/*' )

get '/films' do
  @film_list = Film.all()
  erb(:index)
end

# get '/films/film_id' do
#   @film_by_index = Film.find_by_id( params[:num1].to_i)
#   erb(:index1)
# end
