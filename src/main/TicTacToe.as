package main
{
import flash.display.Sprite;
	
public class TicTacToe extends Sprite {
  protected var _context:GameContext = null;

	public function TicTacToe() : void {
    _context = new GameContext(this);
	}
 }
}