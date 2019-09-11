import crafttweaker.item.IItemStack;

var NameMap = {
	<magneticraft:crafting:5> : "Bronze mesh",
	<magneticraft:iron_pipe> : "Fluid pipe",
	<magneticraft:multiblock_parts:2> : "Grate Machine Block",
	<magneticraft:multiblock_parts:5> : "Corrugate Machine Block",
} as string[IItemStack] ;

for item, name in NameMap{
	item.displayName = name;
}