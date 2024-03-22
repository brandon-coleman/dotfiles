class Object
  @@previous_logger_level = -1

  def reset_logger_to_previous
    ActiveRecord::Base.logger.level = @@previous_logger_level
  end

  def log_info
    @@previous_logger_level = ActiveRecord::Base.logger.level
    ActiveRecord::Base.logger.level = Logger::INFO
  end

  def log_debug
    @@previous_logger_level = ActiveRecord::Base.logger.level
    ActiveRecord::Base.logger.level = Logger::DEBUG
  end

  def log_error
    @@previous_logger_level = ActiveRecord::Base.logger.level
    ActiveRecord::Base.logger.level = Logger::ERROR
  end

  def log_warn
    @@previous_logger_level = ActiveRecord::Base.logger.level
    ActiveRecord::Base.logger.level = Logger::WARN
  end

  def log_fatal
    @@previous_logger_level = ActiveRecord::Base.logger.level
    ActiveRecord::Base.logger.level = Logger::FATAL
  end
end
