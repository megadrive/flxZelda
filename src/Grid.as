package
{
	import org.flixel.*;

	public class Grid
	{
		public var debugLines:Boolean = true;

		private var _grid:Array = [];

		public function Grid( width:int, height:int, pxSize:int = 16 )
		{
			createGrid();
		}

		public function createGrid( width:int, height:int, pxSize:int = 16 ):void
		{
			// work out how many we can make in x/y
			var numX:int = width / pxSize;
			var numY:int = height / pxSize;

			for( var x = 0; x < numX; ++x )
			{
				var yArray:Array = [];
				for( var y = 0; y < numY; ++y )
				{
					yArray.push(0);
				}
				_grid.
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