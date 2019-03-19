import mods.industrialforegoing.FluidDictionary;

// Mekanism
val liquids = ["liquidhydrogen", "liquidoxygen", "liquidchlorine", "liquidsodium", "liquidlithium", "liquiddeuterium", "liquidethylene", "liquidtritium"] as string[];
for liquid in liquids {
    FluidDictionary.add(liquid, liquid.replace("liquid", ""), 1);
    FluidDictionary.add(liquid.replace("liquid", ""), liquid, 1);
}