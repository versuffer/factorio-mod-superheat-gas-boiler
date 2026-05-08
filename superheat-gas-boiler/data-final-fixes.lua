if mods["cerys-methane-applications"] then
    table.insert(
        data.raw.technology["cerys-methane-processing"].effects,
        {
            type = "unlock-recipe",
            recipe = "superheat-gas-boiler",
        }
    )
    data.raw["boiler"]["superheat-gas-boiler"].energy_source.fluid_box.filter = "methane"
else
    table.insert(
        data.raw.technology["fluid-handling"].effects,
        {
            type = "unlock-recipe",
            recipe = "superheat-gas-boiler",
        }
)
end
