import crafttweaker.item.IItemStack;

val ItemRecipe = {
	<thermalfoundation:material> : [32,33,320,322,323,324,325,352,353,355,356],
	<thaumcraft:plate> : [0,1,2,3],
	//<magneticraft:light_plates> : [0,1,2,3,5,6],
} as int[][IItemStack] ;

for item,range in ItemRecipe {
	for meta in range{
		recipes.remove(item.definition. makeStack(meta));
	}
}