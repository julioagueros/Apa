class Source < ActiveRecord::Base
  belongs_to :user
  attr_accessible :author, :edition, :magazine_num, :pages, :pub_date, :pub_house, :pub_place, :ref_date, :ref_type, :title, :title2, :volume, :website
end
