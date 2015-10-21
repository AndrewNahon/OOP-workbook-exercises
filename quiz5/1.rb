class SecretFile
  

  def initialize(secret_data, logger_instance)
    @data = secret_data
    @logger = logger_instance
  end

  def secret_data
    @logger.create_log_entry
    @secret_data
end


class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
  end
end