local superheat_gas_boiler_item = table.deepcopy(data.raw.item.boiler)
superheat_gas_boiler_item.name = "superheat-gas-boiler"
superheat_gas_boiler_item.icon_size = 32
superheat_gas_boiler_item.icon = "__superheat-gas-boiler__/graphics/icons/superheat-gas-boiler.png"
superheat_gas_boiler_item.order = "b[steam-power]-b[superheat-gas-boiler]"
superheat_gas_boiler_item.place_result = "superheat-gas-boiler"

data.extend(
    {
        superheat_gas_boiler_item,
    }
)
