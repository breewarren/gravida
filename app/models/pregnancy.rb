class Pregnancy < ActiveRecord::Base

    belongs_to :user
    belongs_to :medical_provider
    
end