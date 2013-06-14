package mediatortests
{
  import org.flexunit.asserts.assertNotNull;
  import org.robotlegs.mvcs.Mediator;
  import mediators.GridMediator;

  public class GridMediatorTest
  {
    private var _instance:GridMediator = null;
    
    [Before]
    public function setUp():void
    {
      _instance = new GridMediator();
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
    
  }
}