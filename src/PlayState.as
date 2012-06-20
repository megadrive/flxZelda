package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		public var player:TestSprite = new TestSprite();

		public var walls:FlxGroup = new FlxGroup();

		override public function create():void
		{
			super.create();

			walls.add(new Wall(160, 120));
			add(walls);

			add(player);
		}

		override public function update():void
		{
			super.update();

			FlxG.collide(player, walls);
		}
	}
}