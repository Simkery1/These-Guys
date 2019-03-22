module BookingHelper
  def status_color(status)
    case status
      when "Accepté"
        return "status-accepted"
      when "Refusé"
        return "status-declined"
      when "En attente"
        return "status-pending"
      end
  end
end
