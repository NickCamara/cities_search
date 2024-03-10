state1 = State.create(name: 'Paraná')
state2 = State.create(name: 'Santa Catarina')
state3 = State.create(name: 'Rio Grande do Sul')

City.create(name: 'Curitiba', state: state1)
City.create(name: 'Londrina', state: state1)
City.create(name: 'Maringá', state: state1)

City.create(name: 'Florianópolis', state: state2)
City.create(name: 'Joinville', state: state2)
City.create(name: 'Blumenau', state: state2)

City.create(name: 'Porto Alegre', state: state3)
City.create(name: 'Caxias do Sul', state: state3)
City.create(name: 'Pelotas', state: state3)