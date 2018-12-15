class Client < ApplicationRecord
GENDERS =  {
    0 => "Mujer",
    1 =>"Hombre"
}
ID_TYPES= {
    1 => "Registro Civil",
    2 => "Tarjeta de Identidad",
    3 => "Cedula",
    4 => "Nit",
    5 => "Pasaporte"
}
    validates :name, presence: true
    validates :last_name, presence: true
    validates :gender, presence: true
    validates :card_id, presence: true
    validates :id_type, presence: true

    def gender_to_s
        GENDERS[gender]
    end
    def id_type_to_s
        ID_TYPES[id_type]
    end
end
