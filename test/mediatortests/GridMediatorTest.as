package mediatortests
{
  import events.TicTacToeEvent;
  
  import flash.events.EventDispatcher;
  import flash.events.MouseEvent;
  
  import interfaces.IGridView;
  
  import mediators.GridMediator;
  
  import mocks.MockGridView;
  
  import org.flexunit.asserts.assertEquals;
  import org.flexunit.asserts.assertNotNull;
  import org.flexunit.async.Async;
  import org.robotlegs.mvcs.Mediator;

  public class GridMediatorTest
  {
    private var _instance:GridMediator = null;
    private var _view:MockGridView = null;

    [Before]
    public function setUp():void
    {
      _view = new MockGridView();
      _instance = new GridMediator();
      _instance.setViewComponent(_view);
      _instance.eventDispatcher = new EventDispatcher();
      _instance.onRegister();
    }

    [After]
    public function tearDown():void
    {
      _instance = null;
    }
    
    [BeforeClass]
    public static function setUpBeforeClass():void
    {
    }
    
    [AfterClass]
    public static function tearDownAfterClass():void
    {
    }
    
    [Test]
    public function class_is_derived_from_mediator() : void {
      var mediator:Mediator = _instance as Mediator;
      assertNotNull(mediator);
    }
    
    [Test]
    public function mediator_has_grid_view_component_attached():void {
      var viewComponent:IGridView = _instance.getViewComponent() as IGridView;
      assertNotNull(viewComponent);
    }
    
    [Test(async)]
    public function mediator_handles_mouse_click_on_grid():void {
      var x:int = Math.floor(Math.random() * 200);
      var y:int = Math.floor(Math.random() * 200);
      Async.proceedOnEvent(this, 
                          _instance.eventDispatcher,
                          TicTacToeEvent.GRID_CLICKED);
      _view.Click(x, y);
    }
  }
}