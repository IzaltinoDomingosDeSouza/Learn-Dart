//Run  dart run roll_dice.dart

import 'dart:math';

class RollDice
{
	static const int FACE_MAX_SIZE = 6;
	final Random _random = Random();
	
	int _face = 1;
	
	int get face => _face;
	
	RollDice()
	{
		roll();
	}
	void roll()
	{
		_face = _random.nextInt(FACE_MAX_SIZE) + 1;
	}
}
void main()
{	
	RollDice dice = RollDice();
	
	for(int i = 0;i < 10;++i)
	{
		dice.roll();
		print(dice.face);
	}
}

