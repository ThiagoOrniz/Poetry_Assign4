class PoemsController < ApplicationController

	def index
		@allPoems = Poem.all

		@poems = Array.new()

		@allPoems.each do |poem|
		 	if poem.published
		 		@poems << poem
		 	end

		end
		@poems
	end

	def show
		@poem = Poem.find(params[:id])

	end
end
