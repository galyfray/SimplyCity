import crafttweaker.item.IItemStack;

var NameMap = {
	<magneticraft:crafting:5> : "bronze mesh",
	<magneticraft:iron_pipe> : "fluid pipe",
} as string[IItemStack] ;

for item, name in NameMap{
	item.displayName = name;
}