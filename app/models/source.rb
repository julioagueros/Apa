class Source < ActiveRecord::Base
  belongs_to :User
  attr_accessible :author, :edition, :magazine_num, :pages, :pub_date, :pub_house, :pub_place, :ref_date, :ref_type, :title, :title2, :volume, :website, :user_id, :ref_day, :ref_month, :ref_year, :pub_day, :pub_month, :pub_year

	validates_presence_of :author
	#validates_presence_of :ref_day
	#validates_presence_of :ref_month
	#validates_presence_of :ref_year
	validates_presence_of :title
	#validates_numericality_of :ref_day
	#validates_numericality_of :ref_month
	#validates_numericality_of :ref_year
	#validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

	def self.mes(month)
  		case month
  			when 1 then "january"
  			when 2 then "february"
  			when 3 then "march"
  			when 4 then "april"
  			when 5 then "may"
  			when 6 then "june"
  			when 7 then "july"
  			when 8 then "august"
  			when 9 then "september"
  			when 10 then "november"
  			when 12 then "december"  			
  		end
  end
end