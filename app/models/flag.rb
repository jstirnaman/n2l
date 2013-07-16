class Flag
  include Mongoid::Document
  field :name, type: String, localize: true
  field :type, type: String, localize: true
  field :description, type: String, localize: true
  field :icon, type: String 
  embedded_in :responses
  embedded_in :questions
end
