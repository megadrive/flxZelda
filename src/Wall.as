package
{
	import org.flixel.*;

	public class Wall extends FlxSprite
	{
		public function Wall(X:Number = 0, Y:Number = 0, SimpleGraphic:Class = null)
		{
			super(X, Y, SimpleGraphic);

			this.immovable = true;
		}
	}
}