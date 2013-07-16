class Response
  include Mongoid::Document
  field :content, type: String, localize: true
  field :collection_time, type: DateTime
  has_one :question
  embeds_many :comments
  embeds_many :flags, as :flaggable
end
