import mods.gregtech.material.Material;
import scripts.craft.craft.Craft;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;

#ignoreBracketErrors

var dusts = <ore:dust* & !Purified & !Tiny & !Small & !Impure>;

    var material = <ore:smallDust>;
    var tinyMaterial = <ore:tinyDust>;

for dust in dusts {
    print(dust.name);
    var smallmaterial = oreDict.get("smallDust" ~ dust.name) as IIngredient;
    var tinymaterial = oreDict.get("tinyDust" ~ dust.name) as IIngredient;
    //if(smallmaterial)
        craft.reshapeless(dust.firstItem, "ddd-dd", {"d": smallmaterial} );
   // if(tinymaterial && smallmaterial)
        //craft.reshapeless(smallmaterial, "tt", {"t": tinymaterial});
}

