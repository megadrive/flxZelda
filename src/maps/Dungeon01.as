package maps
{
	import org.flixel.*;

	public class Dungeon01 extends Map
	{
		public function Dungeon01()
		{
			super();
		}

		override public function onInit():void
		{
			this.loadLevel(Assets.DUNGEON_01_MAP, Assets.DUNGEON_01_GFX);

			this.exitNorth = Dungeon01;
		}
	}
}