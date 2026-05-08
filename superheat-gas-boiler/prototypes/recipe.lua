local superheat_gas_boiler_recipe = {
	type = "recipe",
	name = "superheat-gas-boiler",
	enabled = false,
	ingredients = {
		{type = "item", name = "boiler", amount = 1},
		{type = "item", name = "pump", amount = 1},
		{type = "item", name = "steel-plate", amount = 100},
	},
	results = {{type = "item", name ="superheat-gas-boiler", amount = 1}}
}

data.extend(
    {
        superheat_gas_boiler_recipe,
    }
)