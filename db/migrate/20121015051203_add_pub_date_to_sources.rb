class AddPubDateToSources < ActiveRecord::Migration
  def change
    add_column :sources, :pub_date, :string
  end
end
