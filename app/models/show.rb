class Show < ActiveRecord::Base

  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(params)
    self.network = Network.find_or_create_by(call_letters: params[:call_letters])
    self.save
  end
end