package events {
  import flash.events.Event;

  public class TicTacToeEvent extends Event {
    public static const GRID_CLICKED:String = "GRID_CLICKED";
    private var _body:* = null;
    
    public function TicTacToeEvent(type:String, body:* = null):void {
      super(type);
      _body = body;
    }
    
    public function get body():* {
      return _body;
    }
    
    override public function clone():Event {
      return new TicTacToeEvent(type, body)
    }
  }
}