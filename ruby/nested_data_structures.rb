cars = {
	japanese: {
		honda: ['Accord', 'Civic', 'Fit', 'Prelude'],
		toyota: {
			trucks: ['Tacoma', 'Tundra'],
			cars: ['Corolla', 'Camry']
				},
		nissan: ['Sentra', 'Altima', 'GTR'],
		mazda: ['3', '6']
			},
	american: {
		chevrolet: {
			trucks: ['Silverado', 'S10'],
			cars: ['Impala','Malibu']
				},
		dodge: {
			trucks: ['Ram', 'Dakota'],
			cars: ['Avenger', 'Charger']
				}
	},
	european: {
		bmw: ['3 Series', '5 Series'],
		volkswagen: ['Jetta','Passat']
	}
}

cars[:japanese][:toyota][:trucks].push("Highlander")
# Add toyota suv to trucks
cars[:american][:dodge][:cars].push("Hellcat")
# Add dodge hellcat to cars
cars[:european][:bmw].push("7 Series")
# Add 7 series to BMW
cars[:american][:chevrolet][:trucks][1] = 'Colorado'
# Replace obsolete "S10" truck with current model Colorado
cars[:japanese][:honda].pop
# Delete discontinued Honda Prelude model
p cars