# == Schema Information
#
# Table name: tipo_cargas
#
#  id          :bigint           not null, primary key
#  nombre      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class TipoCarga < ApplicationRecord
  # Validaciones
  validates :nombre, presence: true, uniqueness: true
  validates :descripcion, presence: true

  # Relaciones
  has_many :trayectos
end
