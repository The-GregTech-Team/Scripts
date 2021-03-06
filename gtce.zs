import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;

// Circuits
var basic = <ore:circuitBasic>;
var advanced = <ore:circuitAdvanced>;
var elite = <ore:circuitElite>;
var ultimate = <ore:circuitUltimate>;

// IE Stuff
// IE Tube to GTCE tube
<ore:circuitPrimitive>.addAll(<ore:electronTube>);
<ore:ingotCupronickel>.addAll(<ore:ingotConstantan>);
<ore:ingotCosmicNeutronium>.addAll(<ore:ingotNeutronium>);

// Plastics
var plastic = <ore:platePlastic>;
var polyPlastic = <ore:platePolyvinylChloride>;
var polyTetra = <ore:platePolytetrafluoroethylene>;

// Machines
val metal_bender = RecipeMap.getByName("metal_bender");
val mixer = RecipeMap.getByName("mixer");
val alloy_smelter = RecipeMap.getByName("alloy_smelter");

<ore:ingotAluminium>.addAll(<ore:ingotAluminum>);
<ore:plateAluminium>.addAll(<ore:plateAluminum>);
<ore:crystalCinnabar>.addAll(<ore:gemCinnabar>);

<ore:ingotSUS>.addAll(<ore:ingotStainlessSteel>);

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
