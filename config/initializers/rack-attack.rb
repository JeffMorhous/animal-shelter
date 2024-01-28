class Rack::Attack
  if !ENV['REDIS_URL'] || Rails.env.test?
    cache.store = ActiveSupport::Cache::MemoryStore.new
  end

  # Throttle all requests by IP (60rpm)
  # Key: "rack::attack:#{Time.now.to_i/:period}:req/ip:#{req.ip}"
  throttle('req/ip', limit: 5, period: 5.minutes) do |req|
    req.ip # unless req.path.start_with?('/assets')
  end
end