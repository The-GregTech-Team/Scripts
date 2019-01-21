import mods.gregtech.recipe.RecipeMap;

// Circuits
var basic = <ore:circuitBasic>;
var advanced = <ore:circuitAdvanced>;
var elite = <ore:circuitElite>;
var ultimate = <ore:circuitUltimate>;

// Machines
val metal_bender = RecipeMap.getByName("metal_bender");
val mixer = RecipeMap.getByName("mixer");
val alloy_smelter = RecipeMap.getByName("alloy_smelter");

<ore:circuitGABasic>.addAll(basic);
<ore:circuitGAAdvanced>.addAll(advanced);
<ore:circuitGAElite>.addAll(elite);
<ore:circuitGAUltimate>.addAll(ultimate);
<ore:ingotAluminium>.addAll(<ore:ingotAluminum>);
<ore:plateAluminium>.addAll(<ore:plateAluminum>);
<ore:crystalCinnabar>.addAll(<ore:gemCinnabar>);

<ore:ingotSUS>.addAll(<ore:ingotStainlessSteel>);

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
recipes.addShaped(<gtadditions:ga_meta_item:32017> * 2,[[<mekanism:controlcircuit>],[<mekanism:controlcircuit>]]);

// Cinnabar convert
recipes.addShapeless(<thermalfoundation:material>.withDamage(866), [<ore:gemCinnabar>]);

// Craft Galacticraft compressed plate in metal bender
metal_bender.recipeBuilder()
    .inputs(<ore:ingotCopper> * 2)
    .property("circuit", 2)
    .outputs(<galacticraftcore:basic_item:6> * 1)
    .duration(50)
    .EUt(8)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotTin> * 2)
    .property("circuit", 2)
    .outputs(<galacticraftcore:basic_item:7> * 1)
    .duration(50)
    .EUt(8)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotAluminium> * 2)
    .property("circuit", 2)
    .outputs(<galacticraftcore:basic_item:8> * 1)
    .duration(50)
    .EUt(8)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotSteel> * 2)
    .property("circuit", 2)
    .outputs(<galacticraftcore:basic_item:9> * 1)
    .duration(50)
    .EUt(8)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotIron> * 2)
    .property("circuit", 2)
    .outputs(<galacticraftcore:basic_item:11> * 1)
    .duration(50)
    .EUt(8)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:ingotTitanium> * 2)
    .property("circuit", 2)
    .outputs(<galacticraftplanets:item_basic_asteroids:6> * 1)
    .duration(50)
    .EUt(8)
    .buildAndRegister();

// Alloys
// Enderium blend
mixer.recipeBuilder()
    .inputs(<ore:dustLead> * 3, <ore:dustPlatinum> * 1)
    .fluidInputs([<liquid:enderium> * 1000])
    .outputs(<thermalfoundation:material>.withDamage(103) * 3)
    .duration(10)
    .EUt(24)
    .buildAndRegister();

// Signalum blend
mixer.recipeBuilder()
    .inputs(<ore:dustCopper> * 3, <ore:dustSilver> * 1)
    .fluidInputs([<liquid:redstone> * 1000])
    .outputs(<thermalfoundation:material>.withDamage(101) * 3)
    .duration(5)
    .EUt(24)
    .buildAndRegister();
    
// Pulsating Iron
alloy_smelter.recipeBuilder()
    .inputs(<ore:ingotIron> * 1, <ore:gemEnderPearl> * 1)
    .outputs(<enderio:item_alloy_ingot>.withDamage(5))
    .duration(20)
    .EUt(32)
    .buildAndRegister();
    
// Vibrant Alloy
alloy_smelter.recipeBuilder()
    .inputs(<ore:ingotEnergeticAlloy> * 1, <ore:gemEnderPearl> * 1)
    .outputs(<enderio:item_alloy_ingot>.withDamage(2))
    .duration(40)
    .EUt(32)
    .buildAndRegister();