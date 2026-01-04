class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(']:') [1].gsub("\r", '').gsub("\n", '').strip
  end

  def log_level
    @line.split(']:')[0].gsub('[', '').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

print(LogLineParser.new('[ERROR]: Some invalid action').log_level)
