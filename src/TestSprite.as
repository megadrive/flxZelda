package
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import org.flixel.*;
	
	public class TestSprite extends FlxSprite
	{
		private var gridSize:int = 16; 			// Size of the pseudo-grid
		private var movementDelay:int = 10; 	// How often the player can move
		private var dy:int,dx:int; 				// Movement speed in x and y
		private var timerIncDelay:int = 10; 	// How often the timer updates
		private var timerVal:int = 0;			// Current timer value
		
		private var keyUp:String = 'UP';
		private var keyLeft:String = 'LEFT';
		private var keyDown:String = 'DOWN';
		private var keyRight:String = 'RIGHT';
		
		private var keyUpAlt:String = 'W';
		private var keyLeftAlt:String = 'A';
		private var keyDownAlt:String = 'S';
		private var keyRightAlt:String = 'D';
		
		public var currentMap:Map = null;
		
		/**
		 * Movement based
		 */
		private var pixelsLeftToWalk:uint = 0;
		
		private var movementTimer:Timer = new Timer(timerIncDelay);
		
		public function TestSprite(X:Number = 0, Y:Number = 0, SimpleGraphic:Class = null)
		{
			super(X, Y);
			
			movementTimer.addEventListener(TimerEvent.TIMER, inc);
			movementTimer.start();
		}
		
		/**
		 * Moves sprite along pseudo-grid
		 * fires once per (movementDelay) ticks
		 */
		public function moveUpdate():void
		{
			dy = 0;
			dx = 0;
			
			if( (FlxG.keys.pressed(keyUp) || FlxG.keys.pressed(keyUpAlt)) )
			{
				dy = -gridSize;
			}
			if( (FlxG.keys.pressed(keyLeft) || FlxG.keys.pressed(keyLeftAlt)) )
			{
				dx = -gridSize;
			}
			if( (FlxG.keys.pressed(keyDown) || FlxG.keys.pressed(keyDownAlt)) )
			{
				dy = gridSize;
			}
			if( (FlxG.keys.pressed(keyRight) || FlxG.keys.pressed(keyRightAlt)) )
			{
				dx = gridSize;
			}
			
			if ( !checkCollisionInNextMovementStep(dx, dy) )
			{
				this.x += dx;
				this.y += dy;
			}
		}
		
		override public function update():void
		{
			
		}
		
		/**
		 * Increments timer
		 */
		public function inc(Event:TimerEvent):void
		{
			timerVal+= 1;
			
			if(timerVal % movementDelay == 0) moveUpdate();
		}
		
		private function checkCollisionInNextMovementStep(dx:int, dy:int):Boolean
		{
			var obj:FlxObject = new FlxObject(x + dx, y + dy, 16, 16);			
			return FlxG.overlap(obj, currentMap.collidables);
		}
	}
}