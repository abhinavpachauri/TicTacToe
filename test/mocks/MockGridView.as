package mocks
{
  import flash.events.EventDispatcher;
  import flash.events.MouseEvent;
  
  import interfaces.IGridView;
  
  public class MockGridView extends EventDispatcher implements IGridView
  {
    public function MockGridView()
    {
    }
    
    public function Click(xpos:int, ypos:int):void {
      var mouseEvent:MouseEvent = new MouseEvent(MouseEvent.CLICK);
      mouseEvent.localX = xpos;
      mouseEvent.localY = ypos;
      dispatchEvent(mouseEvent);
    }
  }
}