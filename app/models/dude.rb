# == Schema Information
#
# Table name: dudes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dude < ActiveRecord::Base
  attr_accessible :name, :photo, :audiofile

  mount_uploader :audiofile, AudioloadUploader
end
