package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		public var player:TestSprite = new TestSprite();
		public var walls:FlxGroup = new FlxGroup();
		
		private var _map:Map = new Map();

		override public function create():void
		{
			super.create();
			
			_map.loadLevel(Assets.DUNGEON_01_MAP, Assets.DUNGEON_01_GFX);
			add(_map);
			
			add(player);
		}

		override public function update():void
		{
			super.update();

			FlxG.collide(player, walls);
		}
	}
}