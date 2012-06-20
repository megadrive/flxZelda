package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		public var player:TestSprite = new TestSprite();

		override public function create():void
		{
			super.create();

			add(player);
		}
	}
}