package org.tuio.osc
{
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	/**
	 * A simple event which is used to dispatch received OSC data into the event flow.
	 * Currently only used for internal purposes by various connectors.
	 */
	public class OSCEvent extends Event
	{
		public static var OSC_DATA:String = "OSCData";	
		public var data:ByteArray;
		
		public var srcAddress:String;
		public var srcPort:int;
		
		public function OSCEvent(data:ByteArray,srcAddress:String,srcPort:int)
		{
			super(OSC_DATA);
			this.srcPort = srcPort;
			this.srcAddress = srcAddress;
			this.data = data;
		}

	}
}