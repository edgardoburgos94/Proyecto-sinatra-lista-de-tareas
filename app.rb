require 'sinatra'
require 'make_todo'

get '/' do
  @arreglo =Tarea.all
  erb :index

end

post '/agregar' do

  Tarea.create(params[:agregar])
  @arreglo =Tarea.all
  redirect '/'


end

post '/completar' do
  Tarea.update(params[:completar])
  @arreglo =Tarea.all
  redirect '/'


end

post '/borrar' do
  Tarea.destroy(params[:borrar])
  @arreglo =Tarea.all

  redirect '/'
end
