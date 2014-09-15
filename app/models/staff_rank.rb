class StaffRank < ActiveRecord::Base
    belongs_to :church_staff, :foreign_key => :rank, :primary_key =>  :ranking
end
