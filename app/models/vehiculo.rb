# == Schema Information
#
# Table name: vehiculos
#
#  id         :bigint           not null, primary key
#  placa      :string
#  modelo     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Vehiculo < ApplicationRecord
  # validaciones
  validates :placa, presence: true, uniqueness: true
  validates :modelo, presence: true

  # relaciones
  has_many :trayectos
end
