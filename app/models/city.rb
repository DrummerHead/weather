class City < ActiveRecord::Base
  validates_presence_of :name, :woeid

  def condition
    @condition ||= Condition.new(self)
  end
end
