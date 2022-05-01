import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import scripts.CommonVars.makeShaped as makeShaped;


//General Recipes
<recipemap:centrifuge>.findRecipe(480, [<metaitem:dustPlatinumGroupSludge> * 6], [<liquid:aqua_regia> * 1200]).remove();
centrifuge.recipeBuilder().inputs([<gregtech:meta_dust:364> * 2]).fluidInputs([<liquid:aqua_regia> * 1000]).outputs([<metaitem:dustPlatResidue> * 1]).fluidOutputs([<liquid:pd_concentrate> * 500, <liquid:pt_concentrate> * 500]).duration(500).EUt(480).buildAndRegister();
// blast_furnace.recipeBuilder().inputs([<metaitem:dustPlatResidue> * 5]).outputs([<metaitem:dustLeachResidue> * 4]).fluidOutputs([<liquid:rhodium_sulfate> * 1000]).property("temperature", 1500).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().inputs([<metaitem:dustLeachResidue> * 4]).fluidInputs([<liquid:potassium_diphosphate> * 1000]).outputs([<metaitem:dustRarestMetal> * 6]).fluidOutputs([<liquid:sodium_ruthenate> * 1000]).duration(40).EUt(16).buildAndRegister();

// Pd 
chemreactor.recipeBuilder().fluidInputs([<liquid:pd_concentrate> * 1000, <liquid:ammonia> * 100]).outputs([<gregtech:meta_dust_small:32008> * 3]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().inputs([<gregtech:meta_dust_small:32008> * 4]).fluidInputs([<liquid:chlorine> * 2000]).outputs([<gregtech:meta_dust:32009>]).fluidOutputs([<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000]).duration(40).EUt(16).buildAndRegister();
chemical_bath.recipeBuilder().inputs([<gregtech:meta_dust:32009> * 2]).fluidInputs([<liquid:ammonia> * 100]).fluidOutputs([<liquid:pd_reconcentrate> * 300]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().fluidInputs([<liquid:pd_reconcentrate> * 200, <liquid:ammonia> * 100]).outputs([<gregtech:meta_dust_small:32011> * 5]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().inputs([<gregtech:meta_dust_small:32011>]).fluidInputs([<liquid:formic_acid> * 1000]).outputs([<gregtech:meta_dust:77>]).chancedOutput(<gregtech:meta_dust_small:18>, 5000, 1250).fluidOutputs([<liquid:water> * 1000, <liquid:oxygen> * 1000]).duration(40).EUt(16).buildAndRegister();

// Formic acid
chemreactor.recipeBuilder().inputs([<gregtech:meta_dust:377> * 3]).fluidInputs([<liquid:carbon_monoxide> * 1000]).fluidOutputs([<liquid:sodium_formate> * 1000]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().fluidInputs([<liquid:sulfuric_acid> * 1000, <liquid:sodium_formate> * 1000]).fluidOutputs([<liquid:formic_acid> * 1000]).duration(40).EUt(16).buildAndRegister();

// Ammonium chloride
chemreactor.recipeBuilder().fluidInputs([<liquid:hydrochloric_acid> * 1000, <liquid:ammonia> * 1000]).fluidOutputs([<liquid:ammonium_chloride> * 1000]).duration(40).EUt(16).buildAndRegister();

// Pt 
chemreactor.recipeBuilder().fluidInputs([<liquid:pd_concentrate> * 1000, <liquid:ammonium_chloride> * 100]).outputs([<gregtech:meta_dust:32015> * 12]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().inputs([<gregtech:meta_dust:32015> * 3]).fluidInputs([<liquid:oxygen> * 1000]).outputs([<metaitem:dustPlatinumRaw> * 3]).fluidOutputs([<liquid:nitrogen> * 100]).duration(40).EUt(16).buildAndRegister();
<recipemap:electrolyzer>.findRecipe(120, [<metaitem:dustPlatinumRaw> * 3], null).remove();
electrolyzer.recipeBuilder().inputs([<metaitem:dustPlatinumRaw> * 3]).fluidInputs([<liquid:oxygen> * 1000]).outputs([<metaitem:dustPlatinum> * 1]).fluidOutputs([<liquid:oxygen> * 1000, <liquid:chlorine> * 25]).duration(40).EUt(16).buildAndRegister();

// Rh
<recipemap:chemical_reactor>.findRecipe(1920, [<metaitem:dustInertMetalMixture> * 6], [<liquid:sulfuric_acid> * 1500]).remove();
<recipemap:electrolyzer>.findRecipe(120, null, [<liquid:rhodium_sulfate> * 1000]).remove();
mixer.recipeBuilder().fluidInputs([<liquid:rhodium_sulfate> * 1000, <liquid:water> * 1000]).fluidOutputs([<liquid:rh_sulfate_solution> * 1000]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().inputs([<metaitem:dustZinc> * 1]).fluidInputs([<liquid:rh_sulfate_solution> * 1000]).outputs([<metaitem:dustCrudeRh> * 4]).fluidOutputs([<liquid:water> * 1000, <liquid:sulfuric_acid> * 3000]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().inputs([<metaitem:dustCrudeRh> * 2, <metaitem:dustSalt> * 1]).fluidInputs([<liquid:water> * 1000, <liquid:chlorine> * 1000]).fluidOutputs([<liquid:rh_salt_solution> * 1000]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().inputs([<metaitem:dustSodiumNitrate> * 4]).fluidInputs([<liquid:nitrogen_dioxide> * 2000, <liquid:rh_salt_solution> * 1000]).outputs([<metaitem:dustRhNitrate> * 4]).fluidOutputs([<liquid:oxygen> * 2000, <liquid:nitrogen> * 1000]).duration(40).EUt(16).buildAndRegister();
compressor.recipeBuilder().inputs([<metaitem:dustRhNitrate> * 4]).outputs([<contenttweaker:rh_cake>]);
mixer.recipeBuilder().inputs([<contenttweaker:rh_cake>]).fluidInputs([<liquid:water> * 1000]).fluidOutputs([<liquid:rh_cake_solution> * 1000]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().fluidInputs([<liquid:ammonia> * 1000, <liquid:rh_cake_solution> * 1000]).outputs([<metaitem:dustRhReprecipitated> * 2]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().inputs([<metaitem:dustRhReprecipitated> * 4]).outputs([<metaitem:dustRhodium> * 1, <metaitem:dustNitrate> * 2]).fluidOutputs([<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000]).duration(40).EUt(16).buildAndRegister();

// Ru
chemreactor.recipeBuilder().fluidInputs([<liquid:sodium_ruthenate> * 1000, <liquid:chlorine> * 2000]).outputs([<metaitem:dustSalt> * 2]).fluidOutputs([<liquid:ruthenium_trioxide> * 1000, <liquid:oxygen> * 2000]).duration(40).EUt(16).buildAndRegister();
chemreactor.recipeBuilder().fluidInputs([<liquid:ruthenium_trioxide> * 1000, <liquid:hydrochloric_acid> * 1000]).outputs([<metaitem:dustRuthenium> * 5]).fluidOutputs([<liquid:chlorine> * 1000, <liquid:oxygen> * 3000, <liquid:hydrogen> * 1000]).duration(40).EUt(16).buildAndRegister();