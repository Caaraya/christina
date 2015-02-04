class PoemsController < ApplicationController

	def initialize
	@poems = []
	@poem = nil
	end
	
	def index
		Poems.find_each do |poem|
			poem.where(published: true)
			@poems.push(poem)
		end
	end
	
	def show
	
	@poem = Poems.find(params[:id])
	
	end
end
