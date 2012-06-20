package
{
	import org.flixel.*;

	public class TestSprite extends FlxSprite
	{
		private var keyUp:String = 'UP';
		private var keyDown:String = 'DOWN';
		private var keyLeft:String = 'LEFT';
		private var keyRight:String = 'RIGHT';

		public function TestSprite(X:Number = 0, Y:Number = 0, SimpleGraphic:Class = null)
		{
			super(X, Y);
		}

		override public function update():void
		{
			if( FlxG.keys.pressed(keyUp) )
			{
				this.y -= 1;
			}
			if( FlxG.keys.pressed(keyDown) )
			{
				this.y += 1;
			}
			if( FlxG.keys.pressed(keyLeft) )
			{
				this.x -= 1;
			}
			if( FlxG.keys.pressed(keyRight) )
			{
				this.x += 1;
			}
		}
	}
}