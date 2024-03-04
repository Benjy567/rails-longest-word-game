class GamesController < ApplicationController

  def new
    @letters = []
    10.times do
      letter = (65 + rand(25)).chr
      @letters << letter
    end
  end

  def score
    params[:word].split.each do |element|
      @letters.each do |letter|
        if element != letter
          @result = "Sorry but #{params[:word]} can't be built out of #{@letters.to_s}"
        end
      end
    end
  end
end
