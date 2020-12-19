Optimism.configure do |config|
  config.channel_proc = ->(context) { OptimismChannel.broadcasting_for(context.session.id) }
end