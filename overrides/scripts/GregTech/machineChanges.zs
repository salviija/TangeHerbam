import scripts.craft.craft.Craft;

import mods.gregtech.material.Material;
import mods.gregtech.recipe.Utils;

 

#########
# STEAM #
#########

#steam boilers
craft.remake(<metaitem:steam_boiler_coal_bronze>, [
    "ccc",
    "cwc",
    "bfb"], {
    "b": <minecraft:brick_block>,
    "f": <tfc:blast_furnace>,
    "c": <metaitem:plateBronze>,
    "w": <metaitem:tool.wrench>
    }
);


# steam forge hammer
craft.remake(<metaitem:steam_hammer_bronze>, [
  "sppps",
  "pihip",
  "pi ip",
  "pAaAp",
  "bbBbb"], {
  "p": <metaitem:plateBronze>,
  "s": <metaitem:screwBronze>,
  "h": <tfc:metal/hammer/bronze>,
  "i": <metaitem:plateIron>,
  "a": <tfc:metal/anvil/black_bronze>,
  "A": <embers:aspectus_iron>,
  "B": <gregtech:steam_casing:1>,
  "b": <minecraft:brick_block>
});



//val lowerTierVoltages = ["lv", "mv", "hv", "ev"];
//val hullMaterial = [<material:steel>, <material:aluminium>, <material:vanadiumsteel>, <material:titanium>] as Material[];

// components
/*
  motors, 
  pistons, 
  robot arms, 
  pumps, 
  conveyors, 
  sensors, 
  emitters, 
  field generators, 
  coils, 
  circuits?
*/

craft.remake(<metaitem:electric_furnace.lv>, [
  "sPPPs",
  "P mcP",
  "Pc  P",
  "w C w",
  "sPPPs"], {
  "P": Utils.ore("plate", <material:steel>),
  "s": Utils.ore("screw", <material:steel>),
  "c": <ore:circuitLv>,
  "m": <metaitem:electric.motor.lv>,
  "C": <metaitem:voltage_coil.lv>,
  "w": Utils.ore("cableGtSingle", <material:tin>),
  });

craft.remake(<metaitem:alloy_smelter.lv>, [
  "sPPPs",
  "P   w",
  "w   P",
  "Pc cP",
  "sPPws"], {
  "P": Utils.ore("plate", <material:steel>),
  "s": Utils.ore("screw", <material:steel>),
  "c": <ore:circuitLv>,
  "w": Utils.ore("cableGtSingle", <material:tin>)
  });

craft.remake(<metaitem:bender.lv>, [
  "sPPPs",
  "P m P",
  "wp pw",
  "PcmcP",
  "swPPs"], {
  "P": Utils.ore("plate", <material:steel>),
  "s": Utils.ore("screw", <material:steel>),
  "c": <ore:circuitLv>,
  "p": <metaitem:electric.piston.lv>,
  "m": <metaitem:electric.motor.lv>,
  "w": Utils.ore("cableGtSingle", <material:tin>)
  });

craft.remake(<metaitem:cutter.lv>, [
  "sPPPs",
  "PrSrP",
  "wCgWw",
  "PPccP",
  "sPwPs"], {
  "P": Utils.ore("plate", <material:steel>),
  "s": Utils.ore("screw", <material:steel>),
  "c": <ore:circuitLv>,
  "C": <metaitem:conveyor.module.lv>,
  "g": <minecraft:glass_pane>,
  "p": <metaitem:electric.piston.lv>,
  "S": Utils.ore("toolHeadBuzzSaw", <material:steel>),
  "r": Utils.ore("stick", <material:steel>),
  "m": <metaitem:electric.motor.lv>,
  "w": Utils.ore("cableGtSingle", <material:tin>),
  "W": <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "water", Amount: 1000}})
  });

craft.remake(<metaitem:centrifuge.lv>, [
  "sPPPs",
  "PCrCP",
  "wCmCw",
  "P c P",
  "sPwPs"], {
  "P": Utils.ore("plate", <material:steel>),
  "s": Utils.ore("screw", <material:steel>),
  "c": <ore:circuitLv>,
  "C": <metaitem:fluid_cell>,
  "r": Utils.ore("rotor", <material:tin>),
  "m": <metaitem:electric.motor.lv>,
  "w": Utils.ore("cableGtSingle", <material:tin>),
  });

