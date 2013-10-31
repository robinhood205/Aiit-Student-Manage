class Prospect < ActiveRecord::Base
extend Enumerize
  attr_accessible :aiit_member_id, :applikation, :contact_unnecessary, :event, :memo, :received_date, :visited_date, :wished_material, :wished_program

  belongs_to :aiit_member
  enumerize :wished_program, in: [:innovation, :information, :unknown]
end
