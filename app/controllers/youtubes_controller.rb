class YoutubesController < ApplicationController
  def index
    @youtube = Youtube.find(params[:id])
  end
end