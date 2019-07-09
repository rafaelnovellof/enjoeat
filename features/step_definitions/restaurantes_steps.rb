  Dado("que eu tenho uma lista de restaurantes") do
    @restaurant_data = [
        { name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: 4.9 }, 
        { name: 'Burger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5 },
        { name: 'Cofee Corner', category: 'Cafeteria', delivery_time: '20 minutos', rating: 4.8 }
    ]
  end

  Quando("acesso a lista de restaurantes") do
      visit '/restaurants'
  end
  
  Então("vejo todas as opções disponíveis") do
   restaurantes = all('.restaurant-item') # o método devolve uma coleção de elementos (array)
   expect(restaurantes.size).to be > 1
  end
  
  Então("cada restaurante deve exibir sua categoria") do
    restaurants = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index|
         expect(restaurants[index]).to have_text value[:category]
    end 

  end
  
  Então("cada restaurante deve exibir o tempo de entrega") do
    restaurants = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index| 
        expect(restaurants[index]).to have_text value[:delivery_time]
    end 

  end
  
  Então("cada restaurante deve exibir sua nota de avaliação") do
    restaurants = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index| 
        expect(restaurants[index]).to have_text value[:rating]
    end 
  end