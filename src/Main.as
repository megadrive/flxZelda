package
{
	import org.flixel.*;
	import flash.ui.Mouse;
	
	[SWF(width="480", height="384", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]
	
	public class Main extends FlxGame
	{
		public function Main()
		{
			super(160, 128, PlayState, 3);
			useSystemCursor = true;
			showPause = false;
			Mouse.show();
		}
	}
}