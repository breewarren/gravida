class MedicalProvider < ActiveRecord::Base

    has_many :users
    has_many :pregnancies, through: :users

end