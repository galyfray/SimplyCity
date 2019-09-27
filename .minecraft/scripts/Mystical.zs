#modloaded mysticalagradditions mysticalagriculture avaritia

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
import mods.extendedcrafting.TableCrafting;

import crafttweaker.recipes.ICraftingRecipe;

var i as int;
var b as int;
var j as int;
var itemCraft as IItemStack;

var block as IIngredient;
var seedName as string;

var S = "{" as string;

val Stone =[
	<matc:inferiumcrystal>.anyDamage().transformDamage()|<mysticalagriculture:master_infusion_crystal> ,
	<matc:prudentiumcrystal>.anyDamage().transformDamage()|<mysticalagriculture:master_infusion_crystal> ,
	<matc:intermediumcrystal>.anyDamage().transformDamage()|<mysticalagriculture:master_infusion_crystal> ,
	<matc:superiumcrystal>.anyDamage().transformDamage()|<mysticalagriculture:master_infusion_crystal> ,
	<matc:supremiumcrystal>.anyDamage().transformDamage()|<mysticalagriculture:master_infusion_crystal> ,
] as IIngredient[];

function MA_Craft(i as int) as IItemStack {
	return <mysticalagriculture:crafting>.definition.makeStack(i);
}

function MA_Storage(i as int) as IItemStack {
	return <mysticalagriculture:storage>.definition.makeStack(i);
}

print("############################_Misc_############################");

<mysticalagriculture:cow_seeds>.addTooltip("praise super meuh meuh bros");


//seed renaming for recipes name

val nom = <mysticalagriculture:tier1_inferium_seeds>.displayName as string ;
<mysticalagriculture:tier1_inferium_seeds>.displayName = nom + " Tier1" ;
<mysticalagriculture:tier2_inferium_seeds>.displayName = nom + " Tier2" ;
<mysticalagriculture:tier3_inferium_seeds>.displayName = nom + " Tier3" ;
<mysticalagriculture:tier4_inferium_seeds>.displayName = nom + " Tier4" ;
<mysticalagriculture:tier5_inferium_seeds>.displayName = nom + " Tier5" ;

recipes.remove(<mysticalagriculture:crafting>);
recipes.remove(<mysticalagriculture:storage>);

print("############################_Essence_############################");

recipes.addShapeless("CT_MA_Uncomp0",<mysticalagriculture:crafting>*9,[<mysticalagriculture:storage>]);

recipes.addShaped("CT_MA_storage_0",<mysticalagriculture:storage>,[
	[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>],
	[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>],
	[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>]]);


for i in 1 to 5 {
	b = i - 1 ;
	recipes.remove(MA_Craft(i));
	recipes.remove(MA_Storage(i));
	
	recipes.addShapeless("CT_MA_Uncomp" + i ,MA_Craft(i)*9,[MA_Storage(i)]);
	recipes.addShapeless("CT_MA_" + i + "T"+ b , MA_Craft(b)*8,[MA_Craft(i)]);
	
	recipes.addShaped("CT_MA_" ~ b ~ "T" ~ i ,MA_Craft(i),[
	[MA_Craft(b),MA_Craft(b),MA_Craft(b)],
	[MA_Craft(b),Stone[b]   ,MA_Craft(b)],
	[MA_Craft(b),MA_Craft(b),MA_Craft(b)]]);
	recipes.addShaped("CT_MA_storage_" + i ,MA_Storage(i),[
	[MA_Craft(i),MA_Craft(i),MA_Craft(i)],
	[MA_Craft(i),MA_Craft(i),MA_Craft(i)],
	[MA_Craft(i),MA_Craft(i),MA_Craft(i)]]);
}

//spupremium

recipes.addShapeless("CT_MA_" + 6 + "T"+ 5 , MA_Craft(4)*4,[<mysticalagradditions:insanium>]);

//crafting seed modif

print("############################_Crafting Seeds_############################");

recipes.remove(<mysticalagriculture:crafting:16>);

recipes.addShaped("CT_MA_CrftSeedT" + -1,MA_Craft(16),[
	[MA_Craft(5),MA_Storage(5),MA_Craft(5)],
	[MA_Craft(5),<minecraft:wheat_seeds>,MA_Craft(5)],
	[MA_Craft(5),MA_Craft(5),MA_Craft(5)]]);

for i in 17 to 18 {
	j = i - 17 ;
	b = i - 1 ;
	recipes.remove(MA_Craft(i));

	recipes.addShaped("CT_MA_CrftSeedT" + j,MA_Craft(i),[
	[MA_Craft(j),MA_Craft(j),MA_Craft(j)],
	[MA_Craft(j),MA_Craft(b),MA_Craft(j)],
	[MA_Craft(j),MA_Craft(j),MA_Craft(j)]]);
}

print("-------------------------------Tier3-------------------------------");

//Seed Tier 3

function T3Define(Out as IItemStack, In as IIngredient) {

	val S = <mysticalagriculture:crafting:19> ;
	val B = <mysticalagriculture:crafting:2> ;	
	val E = <mysticalagriculture:fertilized_essence>;	
	
	recipes.remove(Out);
	
	mods.extendedcrafting.TableCrafting.addShaped( Out, [
	[In,B ,B,B ,In], 
	[B ,In,E,In,B ], 
	[B ,E ,S,E ,B ], 
	[B ,In,E,In,B ], 
	[In,B ,B,B ,In]]);
	

}

for seed in <ore:seedsTier3>.items {
	
	for recipe in recipes.getRecipesFor(seed){
		
		itemCraft=recipe.ingredients1D[0].items[0];
		
		block = recipes.craft([[itemCraft,itemCraft,itemCraft],[itemCraft,itemCraft,itemCraft],[itemCraft,itemCraft,itemCraft]]);
		
		if (!(isNull(block))){
			seedName=seed.commandString;
			S=S + '"' + seedName.substring( 1 , seedName.length() - 1 ) + '":"' + block.commandString + '",' ;
		}
		
		
		/*if itemCraft.items[0].ores.length != 0{
			itemCraft=itemCraft.items[0].ores[0];
		}*/
		T3Define(seed,itemCraft);
		
	}
}

//Seed Tier 4

print("-------------------------------Tier4-------------------------------");

function T4Define(Out as IItemStack, In as IIngredient) {

	val S = <mysticalagriculture:crafting:20> ;
	val B = <mysticalagriculture:crafting:3> ;	
	val E = <mysticalagriculture:fertilized_essence>;	
	
	recipes.remove(Out);
	
	mods.extendedcrafting.TableCrafting.addShaped(Out, [
	[In,In,B,B,B,In,In], 
	[In,In,B,B,B,In,In], 
	[B ,B ,E,E,E,B ,B ], 
	[B ,B ,E,S,E,B ,B ], 
	[B ,B ,E,E,E,B ,B ],
	[In,In,B,B,B,In,In],
	[In,In,B,B,B,In,In],]);
	

}

for seed in <ore:seedsTier4>.items {
	
	for recipe in recipes.getRecipesFor(seed){
		
		itemCraft=recipe.ingredients1D[0].items[0];
		
		block = recipes.craft([[itemCraft,itemCraft,itemCraft],[itemCraft,itemCraft,itemCraft],[itemCraft,itemCraft,itemCraft]]);
		
		if (!isNull(block)){
			seedName=seed.commandString;
			S=S + '"' + seedName.substring( 1 , seedName.length() - 1 ) + '":"' + block.commandString + '",' ;
		}
/*
		if itemCraft.items[0].ores.length != 0{
			itemCraft=itemCraft.items[0].ores[0];
		}*/
		T4Define(seed,itemCraft);
		
	}
}

//Seed Tier5

print("-------------------------------Tier5-------------------------------");

function T5Define(Out as IItemStack, In as IIngredient) {

	val S = <mysticalagriculture:crafting:21> ;
	val B = <mysticalagriculture:crafting:4> ;	
	val E = <mysticalagriculture:crafting:51> ;
	val G = <mysticalagriculture:growth_accelerator> ;
	
	recipes.remove(Out);
	
	mods.extendedcrafting.TableCrafting.addShaped(Out, [
	[In,In,In,B,B,B,In,In,In], 
	[In,In,In,B,B,B,In,In,In], 
	[In,In,In,B,B,B,In,In,In], 
	[B ,B ,B ,E,G,E,B ,B ,B ], 
	[B ,B ,B ,G,S,G,B ,B ,B ],
	[B ,B ,B ,E,G,E,B ,B ,B ],
	[In,In,In,B,B,B,In,In,In],
	[In,In,In,B,B,B,In,In,In],
	[In,In,In,B,B,B,In,In,In]]);
	

}

for seed in <ore:seedsTier5>.items {
	
	for recipe in recipes.getRecipesFor(seed){
		
		itemCraft=recipe.ingredients1D[0].items[0];
		
		block = recipes.craft([[itemCraft,itemCraft,itemCraft],[itemCraft,itemCraft,itemCraft],[itemCraft,itemCraft,itemCraft]]);
		
		if (!isNull(block)){
			seedName=seed.commandString;
			S=S + '"' + seedName.substring( 1 , seedName.length() - 1 ) + '":"' + block.commandString + '",' ;
		}
		/*if itemCraft.items[0].ores.length != 0{
			itemCraft=itemCraft.items[0].ores[0];
		}*/
		T5Define(seed,itemCraft);
		
	}
}
//Seed Tier6

print("-------------------------------Tier6-------------------------------");

function T6Define(Out as IItemStack, In as IIngredient) {

	val S = <mysticalagradditions:insanium:1> ;
	val B = <mysticalagradditions:insanium> ;	
	val E = <mysticalagriculture:crafting:52> ;
	val G = <mysticalagriculture:growth_accelerator> ;
	
	recipes.remove(Out);
	
	mods.extendedcrafting.TableCrafting.addShaped(Out, [
	[In,In,In,B,B,B,In,In,In], 
	[In,In,In,B,B,B,In,In,In], 
	[In,In,In,B,B,B,In,In,In], 
	[B ,B ,B ,E,G,E,B ,B ,B ], 
	[B ,B ,B ,G,S,G,B ,B ,B ],
	[B ,B ,B ,E,G,E,B ,B ,B ],
	[In,In,In,B,B,B,In,In,In],
	[In,In,In,B,B,B,In,In,In],
	[In,In,In,B,B,B,In,In,In]]);
	

}
for seed in <ore:seedsTier6>.items {
	
	for recipe in recipes.getRecipesFor(seed){
		
		itemCraft=recipe.ingredients1D[0].items[0];
		/*if itemCraft.items[0].ores.length != 0{
			itemCraft=itemCraft.items[0].ores[0];
		}*/
		T6Define(seed,itemCraft);
		
	}
}
print(S + "}");
recipes.remove(<mysticalagriculture:growth_accelerator>);

mods.extendedcrafting.TableCrafting.addShaped(<mysticalagriculture:growth_accelerator>, [
	[<mysticalagriculture:storage:1>       ,<mysticalagriculture:storage:1>       , <mysticalagriculture:prudentium_apple>, <mysticalagriculture:storage:1>, <mysticalagriculture:storage:1>],
	[<mysticalagriculture:storage:1>       ,<mysticalagriculture:prudentium_apple>, <mysticalagriculture:crafting:52>     , <mysticalagriculture:prudentium_apple>, <mysticalagriculture:storage:1>],
	[<mysticalagriculture:prudentium_apple>,<mysticalagriculture:crafting:52>     , <mysticalagriculture:ingot_storage:6> , <mysticalagriculture:crafting:52>, <mysticalagriculture:prudentium_apple>],
	[<mysticalagriculture:storage:1>       ,<mysticalagriculture:prudentium_apple>, <mysticalagriculture:crafting:52>     , <mysticalagriculture:prudentium_apple>, <mysticalagriculture:storage:1>],
	[<mysticalagriculture:storage:1>       ,<mysticalagriculture:storage:1>       , <mysticalagriculture:prudentium_apple>, <mysticalagriculture:storage:1>, <mysticalagriculture:storage:1>]]);