package maps
{
	import org.flixel.*;

	public class Dungeon02 extends Map
	{
		public function Dungeon02()
		{
			super();
		}

		override public function onInit():void
		{
			this.loadLevel(Assets.DUNGEON_01_MAP, Assets.DUNGEON_01_GFX);
		}
	}
}