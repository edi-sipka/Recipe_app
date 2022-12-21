Food.create!([
    {name: 'Apple', measurement_unit: 'grams', price: 3},
    {name: 'Pineapple', measurement_unit: 'grams', price: 5},
    {name: 'Chicken Leg', measurement_unit: 'units', price: 4},
    {name: 'Cheese', measurement_unit: 'packet', price: 2}
])

Inventory.create!([
    {name: 'Fridge'},
    {name: 'Freezer'},
    {name: 'Pantry'}
])

InventoryFood.create!([
    {food_id: 1, quantity: 3, inventory_id: 3},
    {food_id: 2, quantity: 4, inventory_id: 1},
    {food_id: 3, quantity: 4, inventory_id: 1},
    {food_id: 4, quantity: 1, inventory_id: 2}
])
