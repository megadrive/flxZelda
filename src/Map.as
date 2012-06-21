package
{
	import org.flixel.*;

	/**
	 * ...
	 * @author Andrew Simeon
	 */
	public class Map extends FlxTilemap
	{
		public var exitNorth:Class;
		public var exitWest:Class;
		public var exitEast:Class;
		public var exitSouth:Class;

		public var playerEntryPoint:FlxPoint;

		public function Map()
		{
			exitNorth = null;
			exitWest = null;
			exitEast = null;
			exitSouth = null;

			playerEntryPoint = new FlxPoint();

			onInit();
		}

		/**
		 * This should be overridden with a call to loadLevel with appropriate assets.
		 */
		public function onInit():void
		{

		}

		public function onExitNorth(playerEntryPoint:FlxPoint = null):*
		{
			var rv:* = null;
			if( exitNorth != null )
			{
				rv = new exitNorth();
				rv.playerEntryPoint = playerEntryPoint;
			}
			return rv;
		}

		public function onExitWest(playerEntryPoint:FlxPoint = null):Map
		{
			var rv:* = null;
			if( exitWest != null )
			{
				rv = new exitWest();
				rv.playerEntryPoint = playerEntryPoint;
			}
			return rv;
		}

		public function onExitEast(playerEntryPoint:FlxPoint = null):Map
		{
			var rv:* = null;
			if( exitEast != null )
			{
				rv = new exitEast();
				rv.playerEntryPoint = playerEntryPoint;
			}
			return rv;
		}

		public function onExitSouth(playerEntryPoint:FlxPoint = null):Map
		{
			var rv:* = null;
			if( exitSouth != null )
			{
				rv = new exitSouth();
				rv.playerEntryPoint = playerEntryPoint;
			}
			return rv;
		}

		public function loadLevel(map:Class, graphic:Class):void
		{
			var xml:XML, o:XML;
			xml = Utilities.getXML(map);

			var tiles:XML = xml.Tiles[0];
			this.loadMap(tiles, Assets.DUNGEON_01_GFX, 16, 16, OFF, 0, 0, 1);

			// replaceme: collision creation code
		}
	}
}