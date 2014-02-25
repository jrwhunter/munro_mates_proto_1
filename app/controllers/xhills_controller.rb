class HillsController < ApplicationController
  def index
  	@hills = Array.new
  	File.open("app/assets/files/munros.csv") do |file|
  		while line = file.gets do
  			line_as_array = line.split(',') 
  			hill = Hash.new
  			hill["id"] = line_as_array[0]
  			hill["name"] = line_as_array[1]
  			hill["other_info"] = line_as_array[2]
  			hill["origin"] = line_as_array[3]
  			hill["book"] = line_as_array[4]
  			hill["height"] = line_as_array[5]
  			hill["grid_ref"] = line_as_array[6]
  			hill["map"] = line_as_array[7]
  			@hills.push(hill)
  		end
  	end
  end
end
