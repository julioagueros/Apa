class Source < ActiveRecord::Base
  belongs_to :User
  attr_accessible :author, :edition, :magazine_num, :pages, :pub_date, :pub_house, :pub_place, :ref_date, :ref_type, :title, :title2, :volume, :website, :user_id, :ref_day, :ref_month, :ref_year, :pub_day, :pub_month, :pub_year
end
