package mediators
{
  import events.TicTacToeEvent;
  
  import flash.events.MouseEvent;
  
  import org.robotlegs.mvcs.Mediator;

  public class GridMediator extends Mediator
  {
    public var xpos:int = 0;
    public var ypos:int = 0;

    public function GridMediator()
    {
    }
    
    override public function onRegister():void {
      addViewListener(MouseEvent.CLICK, onMouseClicked, MouseEvent);
    }
    
    private function onMouseClicked(e:MouseEvent):void {
      dispatch(new TicTacToeEvent(TicTacToeEvent.GRID_CLICKED));
    }
  }
}