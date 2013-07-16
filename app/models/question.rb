class Question
  include Mongoid::Document
  field :content, type: String, localize: true
  field :description, type: String, localize: true
  embedded_in :response
  embeds_many :flags, as :flaggable
  has_and_belongs_to_many :question_set
end
