data:extend({
	{
		type = "technology",
		name = "packed-artillery",
		icon_size = 256, icon_mipmaps = 4,
		icon = "__base__/graphics/technology/artillery.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5x-artillery-shell"
			},
			{
				type = "unlock-recipe",
				recipe = "50x-artillery-shell"
			},
			{
				type = "unlock-recipe",
				recipe = "unpack-5x-artillery-shell"
			},
			{
				type = "unlock-recipe",
				recipe = "unpack-50x-artillery-shell"
			}
		},
		prerequisites = { "artillery" },
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 30,
			count = 10
		}
	}
})