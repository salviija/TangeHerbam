import mods.terrafirmacraft.Alloy;
import scripts.craft.craft.Craft;
//import mods.terrafirmacraft.AlloyRecipeBuilder;

val crucibleAlloys as string[] = [
  "STERLING_SILVER",
  "ROSE_GOLD",
  "WEAK_STEEL",
  "BLACK_STEEL",
  "RED_STEEL",
  "WEAK_RED_STEEL",
  "BLUE_STEEL",
  "WEAK_BLUE_STEEL"
];

for x in crucibleAlloys {
  Alloy.removeAlloy(x);
}

craft.remake(<tfc:bloomery>, [
    "BbBiB",
    "iereb",
    "b r i",
    "iereb",
    "BbBiB"
], {
    "B": <tfc:metal/double_sheet/bronze>,
    "b": <tfc:metal/double_sheet/black_bronze>,
    "i": <tfc:metal/double_sheet/bismuth_bronze>,
    "r": <ore:stickBronze>,
    "e": <embers:dust_ember>
});