puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Creating cocktails...'
cocktails_attributes = [
  {
    name: 'Old Fashioned',
    image: 'https://www.washingtonpost.com/rf/image_982w/2010-2019/WashingtonPost/2019/10/02/Food/Images/vtrendapplebutter006LEADWEB.jpg'
  },
  {
    name: 'Bloody Margaret',
    image: 'https://www.giovanniceccarelli.com/wp-content/uploads/2017/07/americano-cocktail.jpg'
  },
  {
    name: 'Long Island Iced Tea',
    image: 'https://faf0b636effdf4106cd4-64fdd735e2b5bcdf3138f96383e8cc99.ssl.cf1.rackcdn.com/aaron-ingrao-keepers-of-the-craft-cocktails-across-america-Mes-Que-257-Edit.jpg'
  },
  {
    name: 'Mr. Bali Hai',
    image: 'https://images.squarespace-cdn.com/content/v1/568bea5540667a54498bf784/1510145534421-NOJRCS609UATL7HIQ8P5/ke17ZwdGBToddI8pDm48kJ7__POZwihxtEhziEAJlYJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Ufow0MSAm9jSXDt4kDII2NxqevN2anL_CgBhZPp9gzv_sgCgF34VRV8MtN345OkU5A/COCKTAIL_TEST_YELLOW-BLUE.jpg?format=2500w'
  },
  {
    name: 'Flaming volcano',
    image: 'https://dalydigs.com/wp-content/uploads/2017/11/iced-craft-cocktail.jpg'
  },
  {
    name: 'Jungle Bird',
    image: 'https://s3.us-east-2.amazonaws.com/chrissy-tuxedo-no2/1500x861recipe-conifer-cocktail-recipe.jpg'
  }
]
Cocktail.create!(cocktails_attributes)


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

puts 'Creating doses...'
doses_attributes = [
  {
    description: '2 cl',
    cocktail_id: 1,
    ingredient_id: 1
  },
    {
    description: 'A handful',
    cocktail_id: 2,
    ingredient_id: 2
  },
    {
    description: '1 litre',
    cocktail_id: 3,
    ingredient_id: 3
  },
    {
    description: 'Some',
    cocktail_id: 4,
    ingredient_id: 4
  },
    {
    description: 'A pinch',
    cocktail_id: 5,
    ingredient_id: 5
  },
    {
    description: '1 cup',
    cocktail_id: 6,
    ingredient_id: 6
  }
]
Dose.create!(doses_attributes)


puts 'Finished!'
