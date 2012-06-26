package
{
	import flash.display.Bitmap;
	import flash.events.Event;
	
	import org.flixel.*;
	import org.flixel.FlxObject;
	
	public class Grid extends FlxObject
	{
		public var grid:Array; 								// This is the grid for the game board. It is a grid.
		public var squaresHoveredOver:Array = new Array(); 	// Squares that the mouse has hovered over
		public var squaresInGrid:int = 11;					// Squares in the grid
		public var squareSize:int = 16;						// The pixel size of the square's bitmap image
		
		public function Grid(X:Number = 0, Y:Number = 0, Width:Number = 0, Height:Number = 0)
		{
			super(X, Y, Width, Height);
			
			grid = new Array( new Array() );
			
			for(var x:int = 0; x<squaresInGrid - 1; x++)
			{
				for(var y:int = 0; y<squaresInGrid - 1; y++)
				{
					grid[x][y] = new Square(x*squareSize, y*squareSize, squareSize, squareSize);
				}

				grid.push(new Array());
			}
		}
		
		/**
		 * Adds the nested array "grid" to FlxG's little party thing.
		 */
		public function addNestedArrayToFlxG():void
		{
			for(var x:int = 0; x<squaresInGrid - 1; x++)
			{
				for(var y:int = 0; y<squaresInGrid - 1; y++)
				{
					FlxG.state.add(grid[x][y]);
				}
			}
		}
	}
}