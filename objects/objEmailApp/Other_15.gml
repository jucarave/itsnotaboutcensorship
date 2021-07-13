/// @description Draw

event_inherited();

drawEmailItems();

if (emails.selected != noone) {
	drawEmailDetail(emails.list[emails.selected]);
}