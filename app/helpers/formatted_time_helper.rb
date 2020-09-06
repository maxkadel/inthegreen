# frozen_string_literal: true

module FormattedTimeHelper
  def format_time(time, format = :long, blank_message = '&nbsp;')
    time.blank? ? blank_message : time.to_s(format)
  end
end
