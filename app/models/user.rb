class User < ApplicationRecord
  LOCATIONS = {
    4 => "Centro Internacional",
    21 => "Centro Medellín",
    22 => "Poblado",
    23 => "Arkadia",
    25 => "Bello",
    27 => "Itagüí",
    28 => "Envigado",
    36 => "Santafé Medellín",
    43 => "La Central Medellín",
    55 => "Plaza Fabricato",
    58 => "Niquía Tierragro",
    60 => "Rionegro",
    61 => "Laureles",
    66 => "Castropol"
  }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :courses
  has_one :active_course, -> { where(active: true) }, class_name: "Course"
end
