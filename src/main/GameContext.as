package main {
  import flash.display.DisplayObjectContainer;
  
  import org.robotlegs.mvcs.Context;

public class GameContext extends Context {
  public function GameContext(contextView:DisplayObjectContainer):void {
    super(contextView);
  }

  override public function startup():void {
    contextView.addChild(new MyGrid());
    super.startup();
  }
}
}