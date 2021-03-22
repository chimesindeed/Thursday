class WordsController < ApplicationController
	
	def index
		@words = Word.all
	end

	def new
		@word = Word.new
	end

	def create
		@word = Word.new(word_params)
		if @word.save
			flash[:notice] = 'Word was successfully saved!'
			redirect_to_words_path
		else
			flash[:notice] = "Word not saved"
			redirect_to_new_word_path
		end
	end

	def show
		@word = Word.find(params[:id])
	end

	def edit
		@word = Word.find(params[:id])
	end

	def update
		@word = Word.find(params[:id])
		@word.update(name: params[:word][:name])
		redirect_to_words_path
	end

	def destroy
		@word = Word.find(params[:id])
		@word.destroy
		redirect_to_words_path
	end

	def word_params
		params.require(:word).permit(:name)
	end
	
end
