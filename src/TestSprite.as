package
{
	import org.flixel.*;

	public class TestSprite extends FlxSprite
	{
		private var keyUp:String = 'UP';
		private var keyLeft:String = 'LEFT';
		private var keyDown:String = 'DOWN';
		private var keyRight:String = 'RIGHT';

		private var keyUpAlt:String = 'W';
		private var keyLeftAlt:String = 'A';
		private var keyDownAlt:String = 'S';
		private var keyRightAlt:String = 'D';

		/**
		 * Movement based
		 */
		private var pixelsLeftToWalk:uint = 0;

		public function TestSprite(X:Number = 0, Y:Number = 0, SimpleGraphic:Class = null)
		{
			super(X, Y);
		}

		override public function update():void
		{
			if( FlxG.keys.pressed(keyUp) || FlxG.keys.pressed(keyUpAlt) )
			{
				this.y -= 1;
			}
			if( FlxG.keys.pressed(keyLeft) || FlxG.keys.pressed(keyLeftAlt) )
			{
				this.x -= 1;
			}
			if( FlxG.keys.pressed(keyDown) || FlxG.keys.pressed(keyDownAlt) )
			{
				this.y += 1;
			}
			if( FlxG.keys.pressed(keyRight) || FlxG.keys.pressed(keyRightAlt) )
			{
				this.x += 1;
			}
		}

		public function isObstacleInWay(dir:uint, group:FlxGroup):Boolean
		{
			if(dir == UP)
			{

			}

			return false;
		}
	}
}