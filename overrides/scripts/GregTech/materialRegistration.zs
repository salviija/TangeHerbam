#loader gregtech

import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;


/**
    ADDING OF NEW MATERIALS
    we can use anything greater than 25599
 */

global argentite = MaterialBuilder(32000, "argentite")
    .dust()
    .build();
print("[TANGEHERBAM] - " ~ argentite);

global polybasite = MaterialBuilder(32001, "polybasite")
    .dust()
    .build();
print("[TANGEHERBAM] - " ~ polybasite);

global proustite = MaterialBuilder(32002, "proustite")
    .gem()
    .build();
print("[TANGEHERBAM] - " ~ proustite);

/**
    ORE DICTIONARIES
 */



