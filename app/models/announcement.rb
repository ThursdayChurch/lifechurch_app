class Announcement < ActiveRecord::Base

  scope :current, -> { where("starts_at <= :now and ends_at >= :now", now: Time.zone.now) }
  
  validates :message, presence: true, length: { maximum: 200 }
  
  validates_datetime :starts_at
  validates_datetime :ends_at, :after => :starts_at, :after_message => 'must be before "Start Time"'
  
  
  validates :ends_at,
            date: { after: :starts_at,
                    before: Proc.new { Time.now + 11.year } } 
  
  
  
  
  def self.current(hidden_ids = nil)
    result = where("starts_at <= :now and ends_at >= :now", now: Time.zone.now)
    result = result.where("id not in (?)", hidden_ids) if hidden_ids.present?
    result
  end

end
