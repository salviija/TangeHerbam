#priority 100
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.recipe.Utils;
import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;

import scripts.GregTech.commonMachineRecipes;


var bronze = MaterialRegistry.get("bronze");
bronze.setFormula("SnCu7", true);
// Bronze Dust * 4
<recipemap:mixer>.findRecipe(7, [<metaitem:dustCopper> * 3, <metaitem:dustTin>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
Mixer.recipeBuilder()
    .inputs(<metaitem:dustCopper> * 7)
    .inputs(<metaitem:dustTin> * 1)
    .outputs(<metaitem:dustBronze> * 8)
    .EUt(7)
    .duration(440)
    .buildAndRegister();


var blackBronze = MaterialRegistry.get("black_bronze");
blackBronze.setFormula("AuAgCu7", true);
<recipemap:mixer>.findRecipe(7, [<metaitem:dustCopper> * 3, <metaitem:dustElectrum> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
Mixer.recipeBuilder()
    .inputs(<metaitem:dustCopper> * 7)
    .inputs(<metaitem:dustGold> * 1)
    .inputs(<metaitem:dustSilver> * 1)
    .outputs(<metaitem:dustBlackBronze> * 9)
    .EUt(7)
    .duration(440)
    .buildAndRegister();

Mixer.recipeBuilder()
    .inputs(<metaitem:dustCopper> * 7)
    .inputs(<metaitem:dustElectrum> * 2)
    .outputs(<metaitem:dustBlackBronze> * 9)
    .EUt(7)
    .duration(440)
    .buildAndRegister();


var bismuthBronze = MaterialRegistry.get("bismuth_bronze");
bismuthBronze.setFormula("Bi(SnCu7)15", true);
<recipemap:mixer>.findRecipe(7, [<metaitem:dustBismuth>, <metaitem:dustBrass> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
Mixer.recipeBuilder()
    .inputs(<metaitem:dustBronze> * 15)
    .inputs(<metaitem:dustBismuth> * 1)
    .outputs(<metaitem:dustBismuthBronze> * 16)
    .EUt(7)
    .duration(440)
    .buildAndRegister();

Mixer.recipeBuilder()
    .inputs(<metaitem:dustBrass> * 7)
    .inputs(<metaitem:dustBismuth> * 1)
    .outputs(<metaitem:dustBismuthBronze> * 8)
    .EUt(7)
    .duration(440)
    .buildAndRegister();

var sterlingSilver = MaterialRegistry.get("sterling_silver");
sterlingSilver.setFormula("Ag13Cu", true);
<recipemap:mixer>.findRecipe(120, [<metaitem:dustCopper>, <metaitem:dustSilver> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
Mixer.recipeBuilder()
    .inputs(<metaitem:dustSilver> * 13)
    .inputs(<metaitem:dustCopper> * 1)
    .outputs(<metaitem:dustSterlingSilver> * 14)
    .EUt(7)
    .duration(440)
    .buildAndRegister();

var redSteel = MaterialRegistry.get("red_steel");
redSteel.setFormula("(CuAu4)(ZnCu3)Fe2(Ni(AuAgCu7)Fe3)4", true);
<recipemap:mixer>.findRecipe(7, [<metaitem:dustSterlingSilver>, <metaitem:dustBismuthBronze>, <metaitem:dustBlackSteel> * 4, <metaitem:dustSteel> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
Mixer.recipeBuilder()
    .inputs(<metaitem:dustRoseGold> * 1)
    .inputs(<metaitem:dustBrass> * 1)
    .inputs(<metaitem:dustSteel> * 2)
    .inputs(<metaitem:dustBlackSteel> * 4)
    .outputs(<metaitem:dustRedSteel> * 8)
    .EUt(7)
    .duration(440)
    .buildAndRegister();

var blueSteel = MaterialRegistry.get("blue_steel");
blueSteel.setFormula("(Bi(SnCu7)15)(Ag13Cu)Fe2(Ni(AuAgCu7)Fe3)4", true);
<recipemap:mixer>.findRecipe(7, [<metaitem:dustRoseGold>, <metaitem:dustBrass>, <metaitem:dustBlackSteel> * 4, <metaitem:dustSteel> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
Mixer.recipeBuilder()
    .inputs(<metaitem:dustBismuthBronze> * 1)
    .inputs(<metaitem:dustSterlingSilver> * 1)
    .inputs(<metaitem:dustSteel> * 2)
    .inputs(<metaitem:dustBlackSteel> * 4)
    .outputs(<metaitem:dustBlueSteel> * 8)
    .EUt(7)
    .duration(440)
    .buildAndRegister();

var largeChunk as OrePrefix = OrePrefix.registerOrePrefix("oreChunkLarge", 0.25);
largeChunk.setGenerationPredicate(IMaterialPredicate.hasOre);
largeChunk.createMaterialItem();
var medChunk as OrePrefix = OrePrefix.registerOrePrefix("oreChunkMedium", 0.125);
medChunk.setGenerationPredicate(IMaterialPredicate.hasOre);
medChunk.createMaterialItem();
var smallChunk as OrePrefix = OrePrefix.registerOrePrefix("oreChunkFine", 0.0625);
smallChunk.setGenerationPredicate(IMaterialPredicate.hasOre);
smallChunk.createMaterialItem();
