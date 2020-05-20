Optimism.configure do |config|
  config.channel = ->(context) { OptimismChannel.broadcasting_for(context.session.id) }
end