Food.create!([
    {name: 'Apple', measurement_unit: 'grams', price: 3},
    {name: 'Pineapple', measurement_unit: 'grams', price: 5},
    {name: 'Chicken Leg', measurement_unit: 'units', price: 4},
    {name: 'Cheese', measurement_unit: 'packet', price: 2}
])

User.create!([
    {user_id: 1, name: 'Edi', email: 'e@gmail.com', encrypted_password: '9min' },
    ])
    
Recipe.create!([
    {user_id: 1, name: 'Chicken Salad', description: 'Chicken Salad', preparation_time: '9min', cooking_time: '3min', public: 1},
    {user_id: 1, name: 'Pineapple Chicken', description: 'Pineapple Chicken', preparation_time: '4min', cooking_time: '12min'},
    {user_id: 1, name: 'Apple Pie', description: 'Apple Pie', preparation_time: '10min', cooking_time: '17min', public: 1}
])
