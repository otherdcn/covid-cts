module ApplicationHelper
  def notification_type(type)
    case type
    when "notice"
      "alert alert-success fade in"
    when "alert"
      "alert alert-warning fade in"
    when "error"
      "alert alert-danger fade in"
    else 
      "alert alert-info fade in"
    end
  end
end
