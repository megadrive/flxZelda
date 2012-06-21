package
{
	import org.flixel.*;
	import maps.*;

	public class PlayState extends FlxState
	{
		public var player:TestSprite = new TestSprite();

		private var _map:Dungeon01 = new Dungeon01();

		override public function create():void
		{
			super.create();

			add(_map);

			player.x = FlxG.width / 2;
			player.y = FlxG.height / 2;
			add(player);
		}

		override public function update():void
		{
			super.update();
			FlxG.collide(player, _map.collidables);
		}
	}
}