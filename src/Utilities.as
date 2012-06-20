package
{
	import flash.utils.ByteArray;
	/**
	 * ...
	 * @author Andrew Simeon
	 */
	public class Utilities
	{
		/**
		 * Loads the file as an XML object. (From FlashPunk.net)
		 * @param	file		The embedded file to load.
		 * @return	An XML object representing the file.
		 */
		public static function getXML(file:Class):XML
		{
			var bytes:ByteArray = new file;
			return XML(bytes.readUTFBytes(bytes.length));
		}
		
	}

}