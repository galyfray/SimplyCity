import mods.chisel.Carving;
import crafttweaker.item.IItemStack;

val chiselAdd = {
    "limestone": [<magneticraft:limestone>,<magneticraft:limestone:1>,<magneticraft:limestone:2>,<magneticraft:burnt_limestone>,<magneticraft:burnt_limestone:2>,<magneticraft:burnt_limestone:1>,<magneticraft:tile_limestone>,<magneticraft:tile_limestone:1>],
} as IItemStack[][string];

for group ,items in chiselAdd {
    for item in items {
        mods.chisel.Carving.addVariation(group, item);
    }
}