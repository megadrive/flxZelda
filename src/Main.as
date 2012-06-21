package
{
	import org.flixel.*;

	[SWF(width="480", height="384", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class Main extends FlxGame
	{
		public function Main()
		{
			super(160, 128, PlayState, 3);
		}
	}
}