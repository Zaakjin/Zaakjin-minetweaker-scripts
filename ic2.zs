val glass =            <ore:glass>;
val circuitBasic =      <ore:circuitBasic>;
val circuitAdvanced =   <ore:circuitAdvanced>;
val rotorCloth =        <CompactWindmills:WOOL>;
val barsIron =          <ore:barsIron>;
val plateCarbon =       <IC2:itemPartCarbonPlate>;
val electricMotor =     <IC2:itemRecipePart:1>;
val glowstone =         <ore:dustGlowstone>;
val ironCasing =        <IC2:itemCasing:4>;
val piston =            <minecraft:piston>;

val generator =         <IC2:blockGenerator:0>;
val macerator =         <IC2:blockMachine:3>;
val recycler =          <IC2:blockMachine:11>;
val compressor =       <IC2:blockMachine:5>;
val casingBasic =       <IC2:blockMachine:0>;
val casingAdvanced =    <IC2:blockMachine:12>;

recipes.remove(<IC2:blockGenerator:2>);
recipes.addShaped(<IC2:blockGenerator:2>,
[   [null,          null,        null],
    [barsIron,   generator,  rotorCloth],
    [null,          null,    null]]);

recipes.remove(<IC2:blockGenerator:3>);
recipes.addShaped(<IC2:blockGenerator:3>,
[   [glass,         glass,        glass],
    [plateCarbon,   plateCarbon,  plateCarbon],
    [circuitBasic,  generator,    circuitBasic]]);

recipes.remove(<IC2:blockGenerator:4>);
recipes.addShaped(<IC2:blockGenerator:4>,
[   [null,          null,       null],
    [rotorCloth,    generator,  rotorCloth],
    [null,          null,       null]]);

#Macerator
recipes.remove(macerator);
recipes.addShaped(macerator,
[   [null,          <factorization:diamond_cutting_head>,   null],
    [null,          electricMotor,                          null],
    [circuitBasic,  casingBasic,                            circuitBasic]]);
    
#Recycler
recipes.remove(recycler);
recipes.addShaped(recycler,
[   [ironCasing,macerator,  ironCasing],
    [ironCasing,glowstone,  ironCasing],
    [ironCasing,compressor, ironCasing]]);

#Compressor
recipes.remove(compressor);
recipes.addShaped(compressor,
[   [piston,        null,       piston],
    [piston,        null,       piston],
    [circuitBasic,  casingBasic,circuitBasic]]);