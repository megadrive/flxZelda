package
{
	import org.flixel.*;

	/**
	 * Unsure whether I need this class at all..
	 */

	public class Grid
	{
		public var debugLines:Boolean = true;

		private var _grid:Array = [];
		public function get grid():Array { return _grid; }

		public function Grid( width:int, height:int, pxSize:int = 16 )
		{
			recreateGrid();
		}

		public function recreateGrid( width:int, height:int, pxSize:int = 16 ):void
		{
			var numX:int = width / pxSize;
			var numY:int = height / pxSize;

			for( var x = 0; x < numX; ++x )
			{
				var yArray:Array = [];
				for( var y = 0; y < numY; ++y )
				{
					yArray.push(0);
				}
				_grid.push(yArray);
			}
		}

		public function showDebugLines():void
		{
			if(debugLines)
			{
				// create lines
			}
		}
	}
}