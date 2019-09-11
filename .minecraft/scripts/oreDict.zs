import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

val OreDictFusion = {
	<ore:lightPlateLead> : <ore:plateLead>,
	<ore:lightPlateCopper> : <ore:plateCopper>,
	<ore:plateGold> : <ore:lightPlateGold>,
	<ore:lightPlateIron> : <ore:plateIron>,
	<ore:lightPlateLead> : <ore:plateLead>,
	<ore:plateSteel> : <ore:lightPlateSteel>,
}as IOreDictEntry[IOreDictEntry] ;

var Items as IItemStack[];

for Ore1, Ore2 in OreDictFusion {
	Ore1.addAll(Ore2);
	Ore2.addAll(Ore1);
}