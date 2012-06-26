package
{
	import flash.display.Sprite;

	/**
	 * ...
	 * @author Andrew Simeon
	 */
	public class Assets
	{
		[Embed(source="../assets/dungeon-01-csv.oel", mimeType="application/octet-stream")]
		public static const DUNGEON_01_MAP:Class;
		
		[Embed(source = "../assets/dungeon-01.png")]
		public static const DUNGEON_01_GFX:Class;
	}
}