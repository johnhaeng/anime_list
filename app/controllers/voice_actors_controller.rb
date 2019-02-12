class VoiceActorsController < ApplicationController

  def index
    @voice_actors = VoiceActor.all
  end

  def show
    @voice_actor = VoiceActor.find(params[:id])
  end

end
