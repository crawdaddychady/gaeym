var _hor = clamp(target_x - x,-1,1) 
var _ver = clamp(target_y - y,-1,1) 

var _dia = sqrt( _hor * _hor + _ver * _ver )
if (_dia != 0)
{
_hor /= _dia 
_ver /= _dia

}	
	
move_and_collide(_hor * move_speed, _ver * move_speed, tilemap)