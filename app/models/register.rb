class Register < ApplicationRecord
  def time
    time = created_at + 7200

    time.strftime("%A, %d %B %Y,  %H:%M:%S")
  end

  def full_name
    "#{name} #{last_name}"
  end
end
