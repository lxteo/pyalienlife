RECIPE {
    type = "recipe",
    name = "moss-farm-mk01",
    energy_required = 1,
    enabled = true,
    ingredients = {
        {"stone-brick", 50},
        {"soil", 50},
        {"iron-plate", 20},
        {"duralumin", 10},
        {"electronic-circuit", 10},
        {"iron-gear-wheel", 10},
    },
    results = {
        {"moss-farm-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "moss-farm-mk01",
    icon = "__pyalienlife__/graphics/icons/moss-farm-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "moss-farm-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "moss-farm-mk01",
    icon = "__pyalienlife__/graphics/icons/moss-farm-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "moss-farm-mk01"},
    fast_replaceable_group = "moss-farm",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"moss"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -25,
    },
    energy_usage = "100kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/a-base.png",
                width = 192,
                height = 32,
                line_length = 10,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(0, 80)
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/a1.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -64)
            },

            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/mask-1.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/a2.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -64)
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/mask-2.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/a3.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(64, -64)
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/mask-3.png",
                width = 64,
                height = 256,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(64, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/sh.png",
                width = 64,
                height = 201,
                line_length = 20,
                frame_count = 120,
                draw_as_shadow = true,
                animation_speed = 0.4,
                shift = util.by_pixel(96, -10)
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -3.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 3.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlife__/sounds/moss-farm.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalienlife__/sounds/moss-farm.ogg", volume = 1.5},
        apparent_volume = 2.5
    }
}
