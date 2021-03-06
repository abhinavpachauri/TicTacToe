package
{
  import Array;
  
  import flash.display.Sprite;
  
  import flexunit.flexui.FlexUnitTestRunnerUIAS;
  
  import mediatortests.GridMediatorTest;
  
  public class FlexUnitApplication extends Sprite
  {
    public function FlexUnitApplication()
    {
      onCreationComplete();
    }
    
    private function onCreationComplete():void
    {
      var testRunner:FlexUnitTestRunnerUIAS=new FlexUnitTestRunnerUIAS();
      testRunner.portNumber=8765; 
      this.addChild(testRunner); 
      testRunner.runWithFlexUnit4Runner(currentRunTestSuite(), "TicTacToe");
    }
    
    public function currentRunTestSuite():Array
    {
      var testsToRun:Array = new Array();
      testsToRun.push(mediatortests.GridMediatorTest);
      return testsToRun;
    }
  }
}