class PoemsController < ApplicationController
	
	def index
	@poems = []
		Poems.each do |poem|
			poem.where(published: true)
			@poems.push(poem)
		end
	end
	
	def show
	
	end
end
