class Interview
  include Mongoid::Document
  field :start_time, type: DateTime
  field :end_time, type: DateTime
  embeds_many :responses
  has_many :question_sets
end
