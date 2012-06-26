package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	
	import maps.*;
	
	import org.flixel.*;
	import org.flixel.plugin.*;

	public class PlayState extends FlxState
	{
		public var player:TestSprite = new TestSprite();

		public var grid:Grid = new Grid(0, 0, 100, 100);		
		
		private var _map:Dungeon01 = new Dungeon01();

		override public function create():void
		{
			super.create();
			
			add(_map);
			
			grid.addNestedArrayToFlxG();

			player.x = FlxG.width / 2;
			player.y = FlxG.height / 2;
			player.currentMap = _map;
			add(player);
		}

		override public function update():void
		{
			super.update();
			FlxG.collide(player, _map.collidables);
		}
	}
}