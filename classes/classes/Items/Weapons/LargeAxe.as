package classes.Items.Weapons 
{
	import classes.Items.Weapon;

	public class LargeAxe extends Weapon
	{
		public function LargeAxe(tier:int) 
		{
			var ids:Array = ["L. Axe ", "L. Axe1", "L. Axe2"];
			var eqptNames:Array = ["large axe", "fine large axe", "masterwork large axe"];
			var longNames:Array = ["an axe", "a fine axe", "a masterwork axe"];
			this.weightCategory = Weapon.WEIGHT_HEAVY;
			this.tier = tier;
			super(ids[tier], "L. Axe", eqptNames[tier], longNames[tier] + " large enough for a minotaur", "cleave", 15, 100, "This massive axe once belonged to a minotaur. It'd be hard for anyone smaller than a giant to wield effectively. The axe is double-bladed and deadly-looking. Requires height of 6'6\" or 80 strength.", Weapon.PERK_LARGE); 
		}
		
	}

}