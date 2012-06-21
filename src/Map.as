package
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Andrew Simeon
	 */
	public class Map extends FlxTilemap
	{
		public var collidables:FlxGroup = new FlxGroup();
		
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
			var xml:XML = Utilities.getXML(map);
			
			var tiles:XML = xml.General[0];
			this.loadMap(tiles, graphic, 16, 16, OFF, 0, 0, 1);
			loadCollision(xml.Collidables[0]);
		}
		
		public function loadCollision(xml:XML):void
		{
			if (xml)
			{
				var rows:Array = xml.toString().split('\n');
				var rowNum:int = 0;
				for each( var row:String in rows )
				{
					var rowLength:int = row.length;
					for (var col:int = 0; col < rowLength; col++)
					{
						if (int(row.charAt(col)) > 0)
						{
							var obj:FlxObject = new FlxObject(col * 16, rowNum * 16, 16, 16);
							obj.immovable = true;
							collidables.add(obj);
						}
					}
					rowNum++;
				}
			}
		}
	}
}