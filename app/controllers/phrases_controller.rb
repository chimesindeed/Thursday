class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.all
  end

  def new
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.new(phrase_params)
    if @phrase.save
      flash[:notice] = 'Phrase was successfully saved!'
      redirect_to_words_path
    else
      flash[:notice] = "Phrase not saved"
      redirect_to_new_phrase_path
    end
  end

  def show
    @phrase = Phrase.find(params[:id])
  end

  def edit
    @phrase = Phrase.find(params[:id])
  end

  def update
    @phrase = Phrase.find(params[:id])
    @phrase.update(name: params[:phrase][:name])
    redirect_to_phrases_path
  end

  def destroy
    @phrase = Phrase.find(params[:id])
    @phrase.destroy
    redirect_to_phrases_path
  end

  def phrase_params
    params.require(:phrase).permit(:name)
  end
  
end
