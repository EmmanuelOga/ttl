class TTL
  VERSION = "0.0.1"

  attr_accessor :ttl

  def initialize(ttl, &block)
    @ttl, @access_times, @hash = ttl, Hash.new, Hash.new(&block)
  end

  def [](key)
    if ( seconds = last_access(key) ).nil?
      nil
    elsif @ttl && seconds > @ttl
      delete(key); nil
    else
      @hash[key]
    end
  end

  def []=(key, val)
    return if @ttl && @ttl <= 0.0
    @access_times[key] = Time.now
    @hash[key] = val
  end

  def last_access(key)
    last_access = @access_times[key]
    last_access && (Time.now - last_access)
  end

  def delete(key)
    @key_times.delete(key)
    @hash.delete(key)
  end
end