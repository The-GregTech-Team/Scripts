// Solve HAC Wooden Low Chest crafting
recipes.remove(<dcs_climate:dcs_device_lowchest_wood>);

recipes.addShaped(<dcs_climate:dcs_device_lowchest_wood>.withTag({InvItems: []}),
[[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
[<minecraft:chest>,null,<minecraft:chest>],
[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);