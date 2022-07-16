# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destroy all'
User.destroy_all
Property.destroy_all
puts 'Seeding - START'

def user_verify(user)
  if user.save
    print 'User '
    print user.name
    puts ' created successfully!'
  else
    puts user.errors.full_messages.join(', ')
  end
end


puts 'Seeding Users'
mathias1 = User.create(name: 'mathias', email: 'mathias@mail.com', phone: '95254321', password: '123456')
user_verify(mathias1)
juan2 = User.create(name: 'juan', email: 'juan@mail.com', phone: '93824323', password: '123456')
user_verify(juan2)
maria3 = User.create(name: 'maria', email: 'maria@mail.com', phone: '945654323', password: '123456')
user_verify(maria3)
divurcio4 = User.create(name: 'divurcio', email: 'divurcio@mail.com', phone: '92354323', password: '123456')
user_verify(divurcio4)
pilar5 = User.create(name: 'pilar', email: 'pilar@mail.com', phone: '985475142', password: '123456')
user_verify(pilar5)
lucia6 = User.create(name: 'lucia', email: 'lucia@mail.com', phone: '93824323', password: '123456')
user_verify(lucia6)
paul7 = User.create(name: 'paul', email: 'paul@mail.com', phone: '945645639', password: '123456')
user_verify(paul7)
sofia8 = User.create(name: 'sofia', email: 'sofia@mail.com', phone: '901254569', password: '123456')
user_verify(sofia8)

# marketing.cover.attach(io: File.open("db/images/mkt_cover.png"), filename: "mkt_cover.png")
def property_verify(property)
  if property.save
    print 'Property from ===>'
    print property.address
    puts '<=== created successfully!'
  else
    puts property.errors.full_messages.join(', ')
  end
end
apartment1 = Property.create(operation_type: 0, address: '1500 Sugar Bowl Dr, New Orleans, LA 70112, USA',
                        property_type: 0, monthly_price: 3000, maintenance: 100, 
                        bedrooms_count: 4, bathrooms_count: 2, area: 180,
                        description: 'Departamento centrico cerca a supermercado, estacion del tren y servicios completos agua, luz, telefono y gas',
                        active_published: true, pets_allowed: false, user_id: 1)
property_verify(apartment1)



apartment2 = Property.create(operation_type: 0, address: 'Avenida San Martín 803, Suero Canto, Obrero, Yauri, Espinar, Cusco, Peru',
                        monthly_price: '2500', maintenance: 90, property_type: 0,
                        bedrooms_count: '3', bathrooms_count: '1', area: '150',
                        description: 'Departamento con completos agua, luz, telefono y gas',
                        active_published: true, pets_allowed: true, user_id: 2)
property_verify(apartment2)



apartment3 = Property.create(operation_type: 0, address: 'Nicolás de Pierola Avenue 583, Lima Metropolitan, Lima, Peru',
                        monthly_price: '3800', maintenance: 80, property_type: 0,
                        bedrooms_count: '5', bathrooms_count: '3', area: '200',
                        description: 'Departamento  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
                        active_published: true, pets_allowed: true, user_id: 3)
property_verify(apartment3)

casa4 = Property.create(operation_type: 1, address: 'Jirón Javier Luna Pizarro 156, Matute, La Victoria, Lima, Peru',
    monthly_price: '200000', maintenance: nil, property_type: 1,
    bedrooms_count: '4', bathrooms_count: '2', area: '180',
    description: 'Casa  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
    active_published: true, pets_allowed: nil, user_id: 4)
property_verify(casa4)


apartment5 = Property.create(operation_type: 0, address: 'Av. Tudela y Varela 130, San Isidro, Lima, Peru',
  property_type: 0, monthly_price: 2000, maintenance: 50,
  bedrooms_count: 3, bathrooms_count: 1, area: 150,
  description: 'Departamento centrico cerca a supermercado, estacion del tren y servicios completos agua, luz, telefono y gas',
  active_published: true, pets_allowed: false, user_id: 1)
property_verify(apartment5)



apartment6 = Property.create(operation_type: 0, address: 'Av. Angamos Oeste 1275, Miraflores, Lima, Peru',
  monthly_price: 3500, maintenance: 90, property_type: 0,
  bedrooms_count: '4', bathrooms_count: '3', area: '100',
  description: 'Departamento con completos agua, luz, telefono y gas',
  active_published: true, pets_allowed: true, user_id: 2)
property_verify(apartment6)



casa7 = Property.create(operation_type: 0, address: 'Retiro 132, Miraflores, Lima, Peru',
  monthly_price: '3800', maintenance: 80, property_type: 1,
  bedrooms_count: '5', bathrooms_count: '3', area: '200',
  description: 'Departamento  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
  active_published: true, pets_allowed: true, user_id: 3)
property_verify(casa7)

casa8 = Property.create(operation_type: 1, address: 'Av. Mariscal La Mar 517, Miraflores, Lima, Peru',
monthly_price: '200000', maintenance: nil, property_type: 1,
bedrooms_count: '4', bathrooms_count: '2', area: '180',
description: 'Casa  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
active_published: true, pets_allowed: nil, user_id: 4)
property_verify(casa8)


apartment9 = Property.create(operation_type: 0, address: 'Joaquin Capelo 410, Miraflores, Lima, Peru',
  property_type: 0, monthly_price: 2000, maintenance: 50,
  bedrooms_count: 3, bathrooms_count: 1, area: 150,
  description: 'Departamento centrico cerca a supermercado, estacion del tren y servicios completos agua, luz, telefono y gas',
  active_published: true, pets_allowed: false, user_id: 1)
property_verify(apartment9)



apartment10 = Property.create(operation_type: 0, address: 'Manuel Tovar 411, Miraflores, Lima, Peru',
  monthly_price: 3500, maintenance: 90, property_type: 0,
  bedrooms_count: '4', bathrooms_count: '3', area: '100',
  description: 'Departamento con completos agua, luz, telefono y gas',
  active_published: true, pets_allowed: true, user_id: 2)
property_verify(apartment10)



casa11 = Property.create(operation_type: 0, address: 'José de la Torre Ugarte 471, Miraflores, Lima, Peru',
  monthly_price: '3800', maintenance: 80, property_type: 1,
  bedrooms_count: '5', bathrooms_count: '3', area: '200',
  description: 'Departamento  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
  active_published: true, pets_allowed: true, user_id: 3)
property_verify(casa11)

casa12 = Property.create(operation_type: 1, address: 'Triana 136, Miraflores, Lima, Peru',
monthly_price: '200000', maintenance: nil, property_type: 1,
bedrooms_count: '4', bathrooms_count: '2', area: '180',
description: 'Casa  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
active_published: true, pets_allowed: nil, user_id: 4)
property_verify(casa12)


apartment13 = Property.create(operation_type: 0, address: '1500 Sugar Bowl Dr, New Orleans, LA 70112, USA',
  property_type: 0, monthly_price: 3000, maintenance: 100, 
  bedrooms_count: 4, bathrooms_count: 2, area: 180,
  description: 'Departamento centrico cerca a supermercado, estacion del tren y servicios completos agua, luz, telefono y gas',
  active_published: true, pets_allowed: false, user_id: 1)
property_verify(apartment13)



apartment14 = Property.create(operation_type: 0, address: 'Avenida San Martín 803, Suero Canto, Obrero, Yauri, Espinar, Cusco, Peru',
  monthly_price: '2500', maintenance: 90, property_type: 0,
  bedrooms_count: '3', bathrooms_count: '1', area: '150',
  description: 'Departamento con completos agua, luz, telefono y gas',
  active_published: true, pets_allowed: true, user_id: 2)
property_verify(apartment14)



apartment15 = Property.create(operation_type: 0, address: 'Nicolás de Pierola Avenue 583, Lima Metropolitan, Lima, Peru',
  monthly_price: '3800', maintenance: 80, property_type: 0,
  bedrooms_count: '5', bathrooms_count: '3', area: '200',
  description: 'Departamento  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
  active_published: true, pets_allowed: true, user_id: 3)
property_verify(apartment15)

casa16 = Property.create(operation_type: 1, address: 'Jirón Javier Luna Pizarro 156, Matute, La Victoria, Lima, Peru',
monthly_price: '200000', maintenance: nil, property_type: 1,
bedrooms_count: '4', bathrooms_count: '2', area: '180',
description: 'Casa  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
active_published: true, pets_allowed: nil, user_id: 4)
property_verify(casa16)


apartment17 = Property.create(operation_type: 0, address: 'Av. Tudela y Varela 130, San Isidro, Lima, Peru',
property_type: 0, monthly_price: 2000, maintenance: 50,
bedrooms_count: 3, bathrooms_count: 1, area: 150,
description: 'Departamento centrico cerca a supermercado, estacion del tren y servicios completos agua, luz, telefono y gas',
active_published: true, pets_allowed: false, user_id: 1)
property_verify(apartment17)



apartment18 = Property.create(operation_type: 0, address: 'Av. Angamos Oeste 1275, Miraflores, Lima, Peru',
monthly_price: 3500, maintenance: 90, property_type: 0,
bedrooms_count: '4', bathrooms_count: '3', area: '100',
description: 'Departamento con completos agua, luz, telefono y gas',
active_published: true, pets_allowed: true, user_id: 2)
property_verify(apartment18)



casa19 = Property.create(operation_type: 0, address: 'Retiro 132, Miraflores, Lima, Peru',
monthly_price: '3800', maintenance: 80, property_type: 1,
bedrooms_count: '5', bathrooms_count: '3', area: '200',
description: 'Departamento  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
active_published: true, pets_allowed: true, user_id: 3)
property_verify(casa19)

casa20 = Property.create(operation_type: 1, address: 'Av. Mariscal La Mar 517, Miraflores, Lima, Peru',
monthly_price: '200000', maintenance: nil, property_type: 1,
bedrooms_count: '4', bathrooms_count: '2', area: '180',
description: 'Casa  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
active_published: true, pets_allowed: nil, user_id: 4)
property_verify(casa20)


apartment21 = Property.create(operation_type: 0, address: 'Joaquin Capelo 410, Miraflores, Lima, Peru',
property_type: 0, monthly_price: 2000, maintenance: 50,
bedrooms_count: 3, bathrooms_count: 1, area: 150,
description: 'Departamento centrico cerca a supermercado, estacion del tren y servicios completos agua, luz, telefono y gas',
active_published: true, pets_allowed: false, user_id: 1)
property_verify(apartment21)



apartment22 = Property.create(operation_type: 0, address: 'Manuel Tovar 411, Miraflores, Lima, Peru',
monthly_price: 3500, maintenance: 90, property_type: 0,
bedrooms_count: '4', bathrooms_count: '3', area: '100',
description: 'Departamento con completos agua, luz, telefono y gas',
active_published: true, pets_allowed: true, user_id: 2)
property_verify(apartment22)



casa23 = Property.create(operation_type: 0, address: 'José de la Torre Ugarte 471, Miraflores, Lima, Peru',
monthly_price: '3800', maintenance: 80, property_type: 1,
bedrooms_count: '5', bathrooms_count: '3', area: '200',
description: 'Departamento  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
active_published: true, pets_allowed: true, user_id: 3)
property_verify(casa23)

casa24 = Property.create(operation_type: 1, address: 'Triana 136, Miraflores, Lima, Peru',
monthly_price: '200000', maintenance: nil, property_type: 1,
bedrooms_count: '4', bathrooms_count: '2', area: '180',
description: 'Casa  cerca a estacion del tren y servicios completos agua, luz, telefono y gas',
active_published: true, pets_allowed: nil, user_id: 4)
property_verify(casa24)