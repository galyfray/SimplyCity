import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;

var i as int;
var b as int;
var j as int;

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