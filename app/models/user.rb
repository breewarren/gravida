
class User < ActiveRecord::Base

    has_many :medical_providers
    has_many :pregnancies, through: :medical_providers
    
end

class Pregnancy < ActiveRecord::Base

    belongs_to :user
    belongs_to :medical_provider
    
end

class MedicalProvider < ActiveRecord::Base

    has_many :users
    has_many :pregnancies, through: :users

end





