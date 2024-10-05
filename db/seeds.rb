# Seed para generar usuarios aleatorios
require 'faker'

# Usuarios
User.create!(nombre: 'Supervisor1', email: 'supervisor1@example.com', password: 'password', tipo_usuario: 'supervisor')
User.create!(nombre: 'Conductor1', email: 'conductor1@example.com', password: 'password', tipo_usuario: 'conductor')

puts "Se han creado 2 usuarios base con éxito."

# Generar 6 usuarios aleatorios
6.times do
  User.create!(
    nombre: Faker::Name.name,
    email: Faker::Internet.unique.email,
    password: 'password', # Puedes cambiar la contraseña si lo prefieres
    password_confirmation: 'password',
    tipo_usuario: %w[conductor supervisor].sample # Selecciona al azar entre 'conductor' y 'supervisor'
  )
end

puts "Se han creado 6 usuarios aleatorios con éxito."

# Vehículos
Vehiculo.create!(placa: 'ABC123', modelo: 'Camión')
Vehiculo.create!(placa: 'DEF456', modelo: 'Camión')

puts "Se han creado 2 vehículos base con éxito."


# Generar 20 vehículos aleatorios
20.times do
  Vehiculo.create!(
    placa: Faker::Vehicle.unique.license_plate,  # Genera una placa de vehículo única
    modelo: Faker::Vehicle.make_and_model         # Genera una marca y modelo de vehículo
  )
end

puts "Se han creado 20 vehículos aleatorios con éxito."

# Tipos de Carga
tipo_carga1 = TipoCarga.create!(nombre: 'Carga Pesada', descripcion: 'Para mercancías pesadas')
tipo_carga2 = TipoCarga.create!(nombre: 'Carga Liviana', descripcion: 'Para mercancías ligeras')

puts "Se han creado 5 tipos de carga base con éxito."

# Generar 5 tipos de carga aleatorios
5.times do
  TipoCarga.create!(
    nombre: Faker::Commerce.product_name,  # Genera un nombre aleatorio de producto
    descripcion: Faker::Lorem.sentence(word_count: 5)  # Genera una descripción aleatoria de 5 palabras
  )
end

puts "Se han creado 5 tipos de carga aleatorios con éxito."

# Asegúrate de que tienes datos en las tablas TipoCarga, Vehiculo, y User antes de ejecutar este seed
if TipoCarga.count > 0 && Vehiculo.count > 0 && User.count > 0

  # Generar 50 trayectos aleatorios
  50.times do
    Trayecto.create!(
      descripcion: Faker::Lorem.paragraph(sentence_count: 2),  # Genera una descripción aleatoria
      tipo_carga_id: TipoCarga.pluck(:id).sample,  # Selecciona un tipo de carga al azar
      destino: Faker::Address.city,  # Genera un destino aleatorio
      fecha_salida: Faker::Date.backward(days: 30),  # Genera una fecha de salida en los últimos 30 días
      fecha_llegada: Faker::Date.forward(days: 10),  # Genera una fecha de llegada en los próximos 10 días
      vehiculo_id: Vehiculo.pluck(:id).sample,  # Selecciona un vehículo al azar
      user_id: User.pluck(:id).sample  # Selecciona un usuario al azar
    )
  end

  puts "Se han creado 50 trayectos aleatorios con éxito."

else
  puts "Por favor, asegúrate de que existen registros en TipoCarga, Vehiculo, y User antes de ejecutar este seed."
end