import mods.nei.NEI;
val plateCopper = <ore:plateCopper>;
val plateIron = <ore:plateIron>;
val plateGold = <ore:plateGold>;
val plateObsidian = <ore:plateObsidian>;
val diamond = <ore:gemDiamond>;
val glass = <ore:blockGlass>;

val forgeHammer = <IC2:itemToolForgeHammer>;
val cutter = <IC2:itemToolCutter:*>;


print("Removing useless siver chest ang useless upgrades recipes");

NEI.hide(<IronChest:BlockIronChest:4>);
recipes.removeShaped(<IronChest:BlockIronChest:4>);
NEI.hide(<IronChest:woodIronUpgrade>);
recipes.removeShaped(<IronChest:woodIronUpgrade>);
NEI.hide(<IronChest:copperSilverUpgrade>);
recipes.removeShaped(<IronChest:copperSilverUpgrade>);
NEI.hide(<IronChest:silverGoldUpgrade>);
recipes.removeShaped(<IronChest:silverGoldUpgrade>);

print("Removing standart chest recipes");

recipes.removeShaped(<IronChest:BlockIronChest:3>);
recipes.removeShaped(<IronChest:BlockIronChest>);
recipes.removeShaped(<IronChest:BlockIronChest:1>);
recipes.removeShaped(<IronChest:BlockIronChest:2>);
recipes.removeShaped(<IronChest:BlockIronChest:5>);
recipes.removeShaped(<IronChest:BlockIronChest:6>);

print("Removing standart upgrade recipes");

recipes.removeShaped(<IronChest:woodCopperUpgrade>);
recipes.removeShaped(<IronChest:copperIronUpgrade>);
recipes.removeShaped(<IronChest:ironGoldUpgrade>);
recipes.removeShaped(<IronChest:goldDiamondUpgrade>);
recipes.removeShaped(<IronChest:diamondCrystalUpgrade>);
recipes.removeShaped(<IronChest:diamondObsidianUpgrade>);

#Upgrades
print("Adding new upgrade recipes");
recipes.addShaped(<IronChest:woodCopperUpgrade>,
[   [plateCopper,                   plateCopper,        plateCopper],
    [forgeHammer.anyDamage().transformDamage(),  <ore:plankWood>,  null],
    [plateCopper,                   plateCopper,        plateCopper]]);

recipes.addShaped(<IronChest:woodCopperUpgrade>,
[   [plateCopper,                   plateCopper,        plateCopper],
    [null,      <ore:plankWood>,  forgeHammer.anyDamage().transformDamage()],
    [plateCopper,                   plateCopper,        plateCopper]]);
	
recipes.addShaped(<IronChest:copperIronUpgrade>,
[   [plateIron,                                     plateIron,                      plateIron],
    [forgeHammer.anyDamage().transformDamage(1),    <ore:ingotCopper>,   null],
    [plateIron,                                     plateIron,                      plateIron]]);

recipes.addShaped(<IronChest:copperIronUpgrade>,
[   [plateIron,     plateIron,                      plateIron],
    [null,          <ore:ingotCopper>,   forgeHammer.anyDamage().transformDamage()],
    [plateIron,     plateIron,                      plateIron]]);
	
recipes.addShaped(<IronChest:ironGoldUpgrade>,
[   [plateGold,                                     plateGold,                      plateGold],
    [forgeHammer.anyDamage().transformDamage(1),    <ore:ingotIron>,   null],
    [plateGold,                                     plateGold,                      plateGold]]);

recipes.addShaped(<IronChest:ironGoldUpgrade>,
[   [plateGold,     plateGold,                      plateGold],
    [null,          <ore:ingotIron>,   forgeHammer.anyDamage().transformDamage()],
    [plateGold,     plateGold,                      plateGold]]);
	
recipes.addShaped(<IronChest:goldDiamondUpgrade>,
[   [diamond,                                     diamond,                      diamond],
    [forgeHammer.anyDamage().transformDamage(1),    <ore:ingotGold>,   null],
    [diamond,                                     diamond,                      diamond]]);

recipes.addShaped(<IronChest:goldDiamondUpgrade>,
[   [diamond,     diamond,                      diamond],
    [null,          <ore:ingotGold>,   forgeHammer.anyDamage().transformDamage()],
    [diamond,     diamond,                      diamond]]);


recipes.addShaped(<IronChest:diamondCrystalUpgrade>,
[   [glass,                                         glass,                          glass],
    [cutter.anyDamage().transformDamage(1),    plateObsidian,   null],
    [glass,                                         glass,                          glass]]);

recipes.addShaped(<IronChest:diamondCrystalUpgrade>,
[   [glass,     glass,                          glass],
    [null,      plateObsidian,   cutter.anyDamage().transformDamage()],
    [glass,     glass,                          glass]]);


recipes.addShaped(<IronChest:diamondObsidianUpgrade>,
[   [plateObsidian,                            plateObsidian,                           plateObsidian],
    [forgeHammer.anyDamage().transformDamage(1),    glass,            null],
    [plateObsidian,                            plateObsidian,                           plateObsidian]]);

recipes.addShaped(<IronChest:diamondObsidianUpgrade>,
[   [plateObsidian,     plateObsidian,                          plateObsidian],
    [null,              glass,           forgeHammer.anyDamage().transformDamage()],
    [plateObsidian,     plateObsidian,                          plateObsidian]]);

print("Adding new chest recipes");

#Copper chest
recipes.addShaped(<IronChest:BlockIronChest:3>,
[   [plateCopper,                   plateCopper,        plateCopper],
    [forgeHammer.anyDamage().transformDamage(),  <minecraft:chest>,  null],
    [plateCopper,                   plateCopper,        plateCopper]]);

recipes.addShaped(<IronChest:BlockIronChest:3>,
[   [plateCopper,                   plateCopper,        plateCopper],
    [null,      <minecraft:chest>,  forgeHammer.anyDamage().transformDamage()],
    [plateCopper,                   plateCopper,        plateCopper]]);

#Iron chest
recipes.addShaped(<IronChest:BlockIronChest:0>,
[   [plateIron,                                     plateIron,                      plateIron],
    [forgeHammer.anyDamage().transformDamage(1),    <IronChest:BlockIronChest:3>,   null],
    [plateIron,                                     plateIron,                      plateIron]]);

recipes.addShaped(<IronChest:BlockIronChest:0>,
[   [plateIron,     plateIron,                      plateIron],
    [null,          <IronChest:BlockIronChest:3>,   forgeHammer.anyDamage().transformDamage()],
    [plateIron,     plateIron,                      plateIron]]);

#Gold chest
recipes.addShaped(<IronChest:BlockIronChest:1>,
[   [plateGold,                                     plateGold,                      plateGold],
    [forgeHammer.anyDamage().transformDamage(1),    <IronChest:BlockIronChest:0>,   null],
    [plateGold,                                     plateGold,                      plateGold]]);

recipes.addShaped(<IronChest:BlockIronChest:1>,
[   [plateGold,     plateGold,                      plateGold],
    [null,          <IronChest:BlockIronChest:0>,   forgeHammer.anyDamage().transformDamage()],
    [plateGold,     plateGold,                      plateGold]]);

#Diamond chest
recipes.addShaped(<IronChest:BlockIronChest:2>,
[   [diamond,                                     diamond,                      diamond],
    [forgeHammer.anyDamage().transformDamage(1),    <IronChest:BlockIronChest:1>,   null],
    [diamond,                                     diamond,                      diamond]]);

recipes.addShaped(<IronChest:BlockIronChest:2>,
[   [diamond,     diamond,                      diamond],
    [null,          <IronChest:BlockIronChest:1>,   forgeHammer.anyDamage().transformDamage()],
    [diamond,     diamond,                      diamond]]);

#Crystal chest
recipes.addShaped(<IronChest:BlockIronChest:5>,
[   [glass,                                         glass,                          glass],
    [cutter.anyDamage().transformDamage(1),    <IronChest:BlockIronChest:2>,   null],
    [glass,                                         glass,                          glass]]);

recipes.addShaped(<IronChest:BlockIronChest:5>,
[   [glass,     glass,                          glass],
    [null,      <IronChest:BlockIronChest:2>,   cutter.anyDamage().transformDamage()],
    [glass,     glass,                          glass]]);

#Obsidian chest
recipes.addShaped(<IronChest:BlockIronChest:6>,
[   [plateObsidian,                            plateObsidian,                           plateObsidian],
    [forgeHammer.anyDamage().transformDamage(1),    <IronChest:BlockIronChest:2>,            null],
    [plateObsidian,                            plateObsidian,                           plateObsidian]]);

recipes.addShaped(<IronChest:BlockIronChest:6>,
[   [plateObsidian,     plateObsidian,                          plateObsidian],
    [null,              <IronChest:BlockIronChest:2>,           forgeHammer.anyDamage().transformDamage()],
    [plateObsidian,     plateObsidian,                          plateObsidian]]);