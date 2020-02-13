puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'
ingredients_attributes = [
  { name: 'Light rum' },
  { name: 'Applejack' },
  { name: 'Gin' },
  { name: 'Dark rum' },
  { name: 'Sweet Vermouth' },
  { name: 'Strawberry schnapps' },
  { name: 'Scotch' },
  { name: 'Southern Comfort' },
  { name: 'Brandy' }
]
Ingredient.create!(ingredients_attributes)
puts 'Finished!'
