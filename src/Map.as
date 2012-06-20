package
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Andrew Simeon
	 */
	public class Map extends FlxTilemap
	{
		public function Map()
		{
			
		}
		
		public function loadLevel(map:Class, graphic:Class):void
		{
			var xml:XML, o:XML;
			xml = Utilities.getXML(map);
			
			var tiles:XML = xml.Tiles[0];
			this.loadMap(tiles, Assets.DUNGEON_01_GFX, 16, 16, OFF, 0, 0, 1);
		}
	}
}