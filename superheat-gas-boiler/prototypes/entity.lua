local superheat_gas_boiler_entity = table.deepcopy(data.raw.boiler.boiler)
superheat_gas_boiler_entity.name = "superheat-gas-boiler"
superheat_gas_boiler_entity.icon = "__superheat-gas-boiler__/graphics/icons/superheat-gas-boiler.png"
superheat_gas_boiler_entity.icon_size = 32
superheat_gas_boiler_entity.minable = {
	mining_time = 0.2,
	result = "superheat-gas-boiler"
}
superheat_gas_boiler_entity.fast_replaceable_group = "boiler"
superheat_gas_boiler_entity.max_health = 400
superheat_gas_boiler_entity.energy_consumption = "11.6MW"
superheat_gas_boiler_entity.target_temperature = 500
superheat_gas_boiler_entity.energy_source = {
	type = "fluid",
	fluid_box = {
		volume = 200,
        effectivity = 1,
		pipe_covers = pipecoverspictures(),
		pipe_picture = {
			north = {
				filename = "__superheat-gas-boiler__/graphics/entity/hr-assembling-machine-1-pipe-N.png",
				priority = "extra-high",
				width = 71,
				height = 38,
				shift = util.by_pixel(2.25, 13.5),
				scale = 0.5
			},
			east = {
				filename = "__superheat-gas-boiler__/graphics/entity/hr-assembling-machine-1-pipe-E.png",
				priority = "extra-high",
				width = 42,
				height = 76,
				shift = util.by_pixel(-24.5, 1),
				scale = 0.5
			},
			south = {
				filename = "__superheat-gas-boiler__/graphics/entity/hr-assembling-machine-1-pipe-S.png",
				priority = "extra-high",
				width = 88,
				height = 61,
				shift = util.by_pixel(0, -31.25),
				scale = 0.5
			},
			west = {
				filename = "__superheat-gas-boiler__/graphics/entity/hr-assembling-machine-1-pipe-W.png",
				priority = "extra-high",
				width = 39,
				height = 73,
				shift = util.by_pixel(25.75, 1.25),
				scale = 0.5
			}
		},
		pipe_connections = {
			{flow_direction = "input", direction = defines.direction.south, position = {0, 0.5}},
		},
		secondary_draw_orders = {
			south = 32,
			north = -1,
			east = -1,
			west = -1,
		}
	},
	burns_fluid = true,
	scale_fluid_usage = true,
	emissions_per_minute = { pollution = 10},
	smoke = {{
			name = "smoke",
			north_position = util.by_pixel(-38, -47.5),
			south_position = util.by_pixel(38.5, -32),
			east_position = util.by_pixel(20, -70),
			west_position = util.by_pixel(-19, -8.5),
			frequency = 15,
			starting_vertical_speed = 0.3,
			starting_frame_deviation = 0
	}},
	light_flicker = {
		color = {r=100, g=19, b=19},
		minimum_light_size = 0.1,
		light_intensity_to_size_coefficient = 1
	}
}

superheat_gas_boiler_entity.pictures.north.fire.filename = "__superheat-gas-boiler__/graphics/entity/hr-superheat-gas-boiler-N-fire.png"
superheat_gas_boiler_entity.pictures.north.fire_glow.filename = "__superheat-gas-boiler__/graphics/entity/hr-superheat-gas-boiler-N-light.png"
superheat_gas_boiler_entity.pictures.north.fire_glow.apply_runtime_tint = true
superheat_gas_boiler_entity.pictures.north.fire_glow.tint = {r=176,g=250,b=255}
superheat_gas_boiler_entity.pictures.north.fire_glow.blend_mode = "additive"
superheat_gas_boiler_entity.pictures.north.fire_glow.draw_as_glow = true

superheat_gas_boiler_entity.pictures.south.fire.filename = "__superheat-gas-boiler__/graphics/entity/hr-superheat-gas-boiler-S-fire.png"
superheat_gas_boiler_entity.pictures.south.fire_glow.filename = "__superheat-gas-boiler__/graphics/entity/hr-superheat-gas-boiler-S-light.png"
superheat_gas_boiler_entity.pictures.south.fire_glow.apply_runtime_tint = true
superheat_gas_boiler_entity.pictures.south.fire_glow.tint = {r=176,g=250,b=255}
superheat_gas_boiler_entity.pictures.south.fire_glow.blend_mode = "additive"
superheat_gas_boiler_entity.pictures.south.fire_glow.draw_as_glow = true

superheat_gas_boiler_entity.pictures.east.fire.filename = "__superheat-gas-boiler__/graphics/entity/hr-superheat-gas-boiler-E-fire.png"
superheat_gas_boiler_entity.pictures.east.fire_glow.filename = "__superheat-gas-boiler__/graphics/entity/hr-superheat-gas-boiler-E-light.png"
superheat_gas_boiler_entity.pictures.east.fire_glow.apply_runtime_tint = true
superheat_gas_boiler_entity.pictures.east.fire_glow.tint = {r=176,g=250,b=255}
superheat_gas_boiler_entity.pictures.east.fire_glow.blend_mode = "additive"
superheat_gas_boiler_entity.pictures.east.fire_glow.draw_as_glow = true

superheat_gas_boiler_entity.pictures.west.fire.filename = "__superheat-gas-boiler__/graphics/entity/hr-superheat-gas-boiler-W-fire.png"
superheat_gas_boiler_entity.pictures.west.fire_glow.filename = "__superheat-gas-boiler__/graphics/entity/hr-superheat-gas-boiler-W-light.png"
superheat_gas_boiler_entity.pictures.west.fire_glow.apply_runtime_tint = true
superheat_gas_boiler_entity.pictures.west.fire_glow.tint = {r=176,g=250,b=255}
superheat_gas_boiler_entity.pictures.west.fire_glow.blend_mode = "additive"
superheat_gas_boiler_entity.pictures.west.fire_glow.draw_as_glow = true

data.extend(
    {
        superheat_gas_boiler_entity,
    }
)
