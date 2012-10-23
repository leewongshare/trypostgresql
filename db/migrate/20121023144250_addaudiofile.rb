class Addaudiofile < ActiveRecord::Migration
  def change

    add_column :songs, :audiofile, :string
    add_column :aliens, :audiofile, :string
    add_column :dudes, :audiofile, :string

  end

end
