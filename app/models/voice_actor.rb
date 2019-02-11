class VoiceActor < ApplicationRecord
  has_many :studio_voice_actors
  has_many :studios, through: :studio_voice_actors

end
