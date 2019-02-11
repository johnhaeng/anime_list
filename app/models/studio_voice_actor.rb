class StudioVoiceActor < ApplicationRecord
  belongs_to :studio
  belongs_to :voice_actor
end
