class SearchesController < ApplicationController

  def search 
  end

  def _something
  end

  def music
    begin
      @resp = Faraday.get "https://deezerdevs-deezer.p.mashape.com/search?q=" do |req|
        req.headers['X-Mashape-Key'] = "NxfDHUyekSmshq3W54U90MH4gGAJp1iwq4AjsnG7UkT0t8urKA"
        req.headers['Accept'] = 'text/plain'
        req.params['q'] = params[:name]
      end

      body = JSON.parse(@resp.body)
      if @resp.success?
        @search = body["data"]
      # else
      #   @error = body["meta"]["errorDetail"]
      end

    rescue Faraday::TimeoutError
      @error = "There was a timeout. Please try again."
    end
    render 'search'
  end




end ## class end
