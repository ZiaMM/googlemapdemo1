module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Mapdemo1"
    end
  end
end
