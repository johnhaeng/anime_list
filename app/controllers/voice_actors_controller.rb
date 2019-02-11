class VoiceActorsController < ApplicationController

  def index
    @voice_actors = VoiceActor.all
  end


end
