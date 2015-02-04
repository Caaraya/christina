class PoemsController < ApplicationController

attr_reader :poems
attr_reader :poem

	def initialize
	@poems = []
	@poem = nil
	end
	
	def index
	
	@poems = Poem.where(published: true)
	
	end
	
	def show
	
	@poem = Poem.find(params[:id])
	
	end
end
