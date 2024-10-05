# README

## Etapa 1

- [x] Generar proyecto
- [x] Vista estatica
- [x] Iniciar la base de datos
- [x] Modelo vehiculos
- [x] Modelo tipo de carga
- [x] Agregar dependecias
- [x] Devise usuarios

## Etapa 2

- [x] Validaciones
- [x] Scaffold
- [x] Relaciones
- [x] Integracion con faker
- [ ] Integrar pagy

## Etapa 3

- [ ] Vistas de paginas estaticas
- [ ] Vistas de scaffold
- [ ] Vista de layout
- [ ] Vistas de Devise
- [ ] css junto a bootstrap

## Etapa 4

- [ ] Probar app y funcionalidades

## Etapa 5

- [ ] Deploy

291 rails new app_gestion_transporte --database=postgresql
292 cd app_gestion_transporte
293 git add .
294 git commit -m 'primer commit'
295 code .
296 git add .
297 git commit -m 'primer commit'
298 git checkout -b etapa-1
299 rails g controller pages home
300 rails s
301 rails db:create
302 rails s
303 rails g model vehiculo placa modelo
304 rails db:migrate
305 rails d model vehiculo placa modelo
306 git status
307 git add .
308 git commit -m 'pagina estatica de home'
309 rails g model vehiculo placa modelo
310 rails db:migrate
311 rails db:reset
312 git add .
313 git commit -m 'modelo vehiculos'
314 rails g model TipoCarga nombre descripcion:text
315 rails db:migrate
316 rails db:drop
317 rails db:create
318 rails db:migrate
319 git add .
320 git commit -m 'modelo tipo_carga'
321 bundle add devise
322 rails generate devise:install
323 git add .
324 git commit -m 'Devise instalado'
325 rails generate devise MODEL nombre:string tipo_usuario:string
326 rails generate devise USER nombre:string tipo_usuario:string
327 rails generate devise user nombre:string tipo_usuario:string
328 rails db:migrate
329 git add .
330 git commit -m 'Devise user configurado'
331 rails s
332 git add .
333 git commit -m 'Devise user configurado'
334 bundle annotate
335 bundle add annotate
336 annotate --models
337 git add .
338 git commit -m 'annotate agregada'
339 git checkout main
340 git remote add origin git@github.com:brayandiazc/app_gestion_transporte.git\ngit branch -M main\ngit push -u origin main
341 git merge etapa-1
342 rails s
343 rails c
344 git add .
345 git commit -m 'validaciones'
346 git checkout -b etapa-2
347 rails g scaffold trayectos descripcion:text tipoCarga:references destino:string fecha_salida:date fecha_llegada:date vehiculo:references usuario:references
348 rails db:migrate
349 rails d scaffold trayectos descripcion:text tipoCarga:references destino:string fecha_salida:date fecha_llegada:date vehiculo:references usuario:references
350 rails g scaffold trayectos descripcion:text tipo_carga:references destino:string fecha_salida:date fecha_llegada:date vehiculo:references user:references
351 rails db:migrate
352 rails s
353 git add .
354 git commit -m 'scaffold trayecto'
355 git add .
356 git commit -m 'relaciones'
357 annotate --models
358 rails s
359 git add .
360 git commit -m 'validacion trayecto'
361 bundle add faker
362 rails s
363 rails db:seed
364 rails s
365 git add .
366 git commit -m 'Datos semilla'
367 rails db:seed
368 rails db:reset
369 rails s
370 git add .
371 git commit -m 'faker'
372 git checkout main
373 git merge etapa-2
374 git push -u origin main
375 git add .
376 git commit -m 'faker'
377 git push -u origin main
378 rails s
379 bundle add simple_form
380 rails generate simple_form:install
381 rails generate simple_form:install --bootstrap
382 rails g scaffold contact name description:text fecha:date
383 rails d scaffold contact name description:text fecha:date
384 rails g scaffold contact name description:text fecha:date user:references
385 rails db:migrate
386 rails s
387 git add .
388 git commit -m 'simple form'
