#priority 10
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;

import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.recipe.Utils;
import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;

import scripts.GregTech.commonMachineRecipes;
//import scripts.GregTech.materialRegistration;
/**
    Ore Chunking

 */



/**
    Silver Ore
    Parting of the metal from the ore
 */

 // Gold Alloy Granulation??

 
 /** 
 Silver bearing ores:
 Galena, Chalopyrite
 Silver mineralizes into argentite(Ag2S), polybasite((Ag, Cu)16Sb2S11) and proustite(Ag3AsS3)
  */

  // Crushing the silver bearing ore chunks

var largeChunk as OrePrefix = OrePrefix.registerOrePrefix("oreChunkLarge", 0.25); // 1/4
largeChunk.setGenerationPredicate(IMaterialPredicate.hasOre);
largeChunk.createMaterialItem();
var medChunk as OrePrefix = OrePrefix.registerOrePrefix("oreChunkMedium", 0.125); // 1/8
medChunk.setGenerationPredicate(IMaterialPredicate.hasOre);
medChunk.createMaterialItem();
var smallChunk as OrePrefix = OrePrefix.registerOrePrefix("oreChunkFine", 0.0625);// 1/16
smallChunk.setGenerationPredicate(IMaterialPredicate.hasOre);
smallChunk.createMaterialItem();

//var largeChunk = OrePrefix.getPrefix("oreChunkLarge");
//print("[TANGEHERBAM] - " ~ largeChunk);
largeChunk.generateRecipes(function(orePrefix as OrePrefix, material as Material) {
    Macerator.recipeBuilder()
        .inputs(Utils.ore("ore", material))
        .outputs(Utils.item(orePrefix, material) * 4)
        .EUt(14)
        .duration(40)
        .buildAndRegister();
} as IOreRecipeHandler);

val smallOreChunk = OrePrefix.getPrefix("oreChunkFine");


Macerator.recipeBuilder()
    .inputs(Utils.ore("ore", <material:galena>)*1)
    .outputs(Utils.item(OrePrefix.getPrefix("oreChunkLarge"), <material:galena>)*3)
    .EUt(16)
    .duration(30)
    .buildAndRegister();

ChemicalBath.recipeBuilder()
    .inputs(Utils.ore(OrePrefix.getPrefix("oreChunkLarge"), <material:galena>))
    .fluidInputs(<liquid:mercury> * 1000)
    .outputs(Utils.item("gem", <material:argentite>))
    .EUt(16)
    .duration(30)
    .buildAndRegister();
