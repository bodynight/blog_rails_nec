class AddArticleName < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :articlename, :string
  end
end
