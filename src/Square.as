package
{
	import flash.display.Bitmap;
	import flash.ui.Mouse;
	
	import org.flixel.*;
	
	public class Square extends FlxSprite
	{
		[Embed(source = "../assets/grid.png")]
		public static var SQUARE_GFX:Class;
		public var squareImg:Bitmap = new SQUARE_GFX;
		public var squareImgOverlay:Bitmap = new SQUARE_GFX;
		private var hasBeenStamped:Boolean = false;
		private var selectedByCursor:Boolean = false;
		
		public function Square(X:Number = 0, Y:Number = 0, Width:Number = 0, Height:Number = 0)
		{			
			super(X, Y, SQUARE_GFX);
		}
		
		override public function update():void
		{
			if(!FlxG.mouse.pressed() && this.selectedByCursor) this.selectedByCursor = false;
			
			if(FlxG.mouse.screenX >= this.x && FlxG.mouse.screenX < this.x + this.width
				&& FlxG.mouse.screenY >= this.y && FlxG.mouse.screenY < this.y + this.height)
			{
				if(FlxG.mouse.justPressed())
				{
					this.color = 0x5050FF;
					this.selectedByCursor = true;
				}
				else if(FlxG.mouse.pressed()&& !selectedByCursor)
				{
					this.color = 0x8888FF;
					this.selectedByCursor = true;
				}
				else if(!selectedByCursor)
				{
					this.color = 0xAAAAFF
				}
			}
			else if(this.color!=0xFFFFFF && !this.selectedByCursor)
			{
				// This is the worst code ever, I am sorry. To myself. Not to you, mega.
				var colorToAdd:uint = 0x000000;
				
				if(uint("0x" + this.color.toString(16).substr(0,1) + "00000") < 0xF00000)
				{
					colorToAdd += 0x100000;
				}
				
				if(uint("0x0" + this.color.toString(16).substr(1,1) + "0000") < 0x0F0000)
				{
					colorToAdd += 0x010000;
				}
				
				if(uint("0x00" + this.color.toString(16).substr(2,1) + "000") < 0x00F000)
				{
					colorToAdd += 0x001000;
				}
				
				if(uint("0x000" + this.color.toString(16).substr(3,1) + "00") < 0x000F00)
				{
					colorToAdd += 0x000100;
				}
				
				if(uint("0x0000" + this.color.toString(16).substr(4,1) + "0") < 0x0000F0)
				{
					colorToAdd += 0x000010;
				}
				
				if(uint("0x00000" + this.color.toString(16).substr(5,1)) < 0x00000F)
				{
					colorToAdd += 0x000001;
				}
				
				this.color += colorToAdd;
				// I would never feel sorry for you.
			}
		}
	}
}