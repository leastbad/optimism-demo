class OptimismChannel < ApplicationCable::Channel
  def subscribed
    stream_for session_id
  end
end
