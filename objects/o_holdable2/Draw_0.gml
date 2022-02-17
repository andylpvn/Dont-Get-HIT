#region draw

if (holder2 == noone)
{
	draw_shadow(x, renderY2 + shadow_yoffset2 + LINK_SHADOW_OFFSET2);
}

//draw_sprite(reference.sprite_index, 0, x, y);

draw_sprite_ext(reference2.sprite_index, reference2.image_index, renderX2, renderY2, reference2.image_xscale, reference2.image_yscale, reference2.image_angle, reference2.image_blend, reference2.image_alpha);

#endregion