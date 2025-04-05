var _hor = 0;
var _ver = 0;

// Handle horizontal movement
if (keyboard_check(ord("D"))) {
    _hor = 1;
}
if (keyboard_check(ord("A"))) {
    _hor = -1;
}

// Handle vertical movement
if (keyboard_check(ord("S"))) {
    _ver = 1;
}
if (keyboard_check(ord("W"))) {
    _ver = -1;
}

// Normalize diagonal movement
var _dia = sqrt(_hor * _hor + _ver * _ver);
if (_dia != 0) {
    _hor /= _dia;
    _ver /= _dia;
}

// Apply movement and collision
move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined);


