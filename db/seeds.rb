# Usuarios
User.create!(nombre: 'Supervisor1', email: 'supervisor1@example.com', password: 'password', tipo_usuario: 'supervisor')
User.create!(nombre: 'Conductor1', email: 'conductor1@example.com', password: 'password', tipo_usuario: 'conductor')

# Vehículos
Vehiculo.create!(placa: 'ABC123', modelo: 'Camión')
Vehiculo.create!(placa: 'DEF456', modelo: 'Camión')

# Tipos de Carga
tipo_carga1 = TipoCarga.create!(nombre: 'Carga Pesada', descripcion: 'Para mercancías pesadas')
tipo_carga2 = TipoCarga.create!(nombre: 'Carga Liviana', descripcion: 'Para mercancías ligeras')