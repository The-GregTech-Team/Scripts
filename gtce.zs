import mods.gregtech.recipe.RecipeMap;

var basic = <ore:circuitBasic>;
var advanced = <ore:circuitAdvanced>;
var elite = <ore:circuitElite>;
var ultimate = <ore:circuitUltimate>;
val metal_bender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");

<ore:circuitGABasic>.addAll(basic);
<ore:circuitGAAdvanced>.addAll(advanced);
<ore:circuitGAElite>.addAll(elite);
<ore:circuitGAUltimate>.addAll(ultimate);
<ore:ingotAluminium>.addAll(<ore:ingotAluminum>);
<ore:plateAluminium>.addAll(<ore:plateAluminum>);

// Craft GA circuits with mekanism patterns
recipes.addShaped(<gtadditions:ga_meta_item:32002> * 2, [[<mekanism:controlcircuit:3>, null], [null, <mekanism:controlcircuit:3>]]);
recipes.addShaped(<gtadditions:ga_meta_item:32041> * 2, [[null, <mekanism:controlcircuit:3>], [<mekanism:controlcircuit:3>, null]]);
recipes.addShaped(<gtadditions:ga_meta_item:32034> * 2, [[<mekanism:controlcircuit:3>, null], [null, <mekanism:controlcircuit:3>]]);
recipes.addShaped(<gregtech:meta_item_1:32707> * 2, [[<mekanism:controlcircuit:3>], [<mekanism:controlcircuit:3>]]);
recipes.addShaped(<gtadditions:ga_meta_item:32040> * 2, [[null, <mekanism:controlcircuit:2>], [<mekanism:controlcircuit:2>, null]]);
recipes.addShaped(<gregtech:meta_item_1:32705> * 2, [[<mekanism:controlcircuit:2>, null], [null, <mekanism:controlcircuit:2>]]);
recipes.addShaped(<gtadditions:ga_meta_item:32035> * 2, [[<mekanism:controlcircuit:2>, <mekanism:controlcircuit:2>]]);
recipes.addShaped(<gtadditions:ga_meta_item:32054> * 2, [[<mekanism:controlcircuit:2>], [<mekanism:controlcircuit:2>]]);
recipes.addShaped(<gtadditions:ga_meta_item:32001> * 2, [[<mekanism:controlcircuit:1>, <mekanism:controlcircuit:1>]]);
recipes.addShaped(<gregtech:meta_item_1:32703> * 2, [[null, <mekanism:controlcircuit:1>], [<mekanism:controlcircuit:1>, null]]);
recipes.addShaped(<gtadditions:ga_meta_item:32055> * 2, [[<mekanism:controlcircuit:1>, null], [null, <mekanism:controlcircuit:1>]]);
recipes.addShaped(<gtadditions:ga_meta_item:32015> * 2, [[<mekanism:controlcircuit:1>], [<mekanism:controlcircuit:1>]]);
recipes.addShaped(<gregtech:meta_item_1:32715> * 2, [[<ore:circuitBasic>, null], [null, <mekanism:controlcircuit>]]);
recipes.addShaped(<gregtech:meta_item_1:32701> * 2, [[<ore:circuitBasic>, null], [<ore:circuitBasic>, null]]);
recipes.addShaped(<gtadditions:ga_meta_item:32017> * 2, [[<ore:circuitBasic>], [<ore:circuitBasic>]]);

// Craft Galacticraft compressed plate in metal bender
metal_bender.recipeBuilder()
    .inputs(<ore:ingotCopper> * 1,<ore:ingotCopper> * 1)
    .outputs(<galacticraftcore:basic_item:6> * 1)
    .duration(50)
    .EUt(32)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotTin> * 1,<ore:ingotTin> * 1)
    .outputs(<galacticraftcore:basic_item:7> * 1)
    .duration(50)
    .EUt(32)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotAluminium> * 1,<ore:ingotAluminium> * 1)
    .outputs(<galacticraftcore:basic_item:8> * 1)
    .duration(50)
    .EUt(32)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotSteel> * 1,<ore:ingotSteel> * 1)
    .outputs(<galacticraftcore:basic_item:9> * 1)
    .duration(50)
    .EUt(32)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotIron> * 1,<ore:ingotIron> * 1)
    .outputs(<galacticraftcore:basic_item:11> * 1)
    .duration(50)
    .EUt(32)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotTitanium> * 1,<ore:ingotTitanium> * 1)
    .outputs(<galacticraftplanets:item_basic_asteroids:6> * 1)
    .duration(50)
    .EUt(32)
    .buildAndRegister();

