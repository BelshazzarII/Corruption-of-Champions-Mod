/**
 * Created by aimozg on 09.01.14.
 */
package classes
{
	import flash.utils.Dictionary;

	public class ItemType
	{
		private static var ITEM_LIBRARY:Dictionary = new Dictionary();
		public static const NOTHING:ItemType = new ItemType("      ", "Nothing");

		public static function lookupItem(id:String):ItemType{
			return ITEM_LIBRARY[id];
		}

		public static function getItemLibrary():Dictionary
		{
			return ITEM_LIBRARY;
		}

		private var _id:String;
		protected var _shortName:String;
		protected var _longName:String;
		protected var _description:String;
		protected var _value:Number;

		/**
		 * Short name (max. 7 letters) to be displayed on buttons
		 */
		public function get shortName():String
		{
			return _shortName;
		}

		/**
		 * A full name of the item, to be described in text
		 */
		public function get longName():String
		{
			return _longName;
		}

		/**
		 * Item base price
		 */
		public function get value():Number
		{
			return _value;
		}

		/**
		 * Detailed description to use on tooltips
		 */
		public function get description():String
		{
			return _description;
		}

		/**
		 * 7-character unique (across all the versions) string, representing that item type.
		 */
		public function get id():String
		{
			return _id;
		}

		public function ItemType(_id:String,_shortName:String=null,_longName:String=null,_value:Number=0,_description:String=null)
		{

			this._id = _id;
			this._shortName = _shortName || _id;
			this._longName = _longName || this.shortName;
			this._description = _description || this.longName;
			this._value = _value;
			if (ITEM_LIBRARY[_id] != null) {
				trace("Duplicatem itemid "+_id+", old item is "+(ITEM_LIBRARY[_id] as ItemType).longName);
				CoC_Settings.error("Duplicate itemid " + _id);
			}
			ITEM_LIBRARY[_id] = this;
		}


		public function toString():String
		{
			return "\""+_id+"\"";
		}
	}
}
