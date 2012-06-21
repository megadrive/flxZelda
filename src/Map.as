package
{
	import org.flixel.*;
	import org.flixel.system.debug.Log;
	import org.flixel.system.FlxDebugger;
	
	/**
	 * ...
	 * @author Andrew Simeon
	 */
	public class Map extends FlxTilemap
	{
		public var collidables:FlxGroup = new FlxGroup();

		public function Map()
		{
			
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