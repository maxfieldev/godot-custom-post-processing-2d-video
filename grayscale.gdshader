shader_type canvas_item;

// Load screen texture
uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

void fragment() {
	// Get color on screen
	vec3 color = texture(screen_texture, SCREEN_UV).rgb;
	// Apply grayscale formula
	color = vec3(0.299 * color.r + 0.587 * color.g + 0.114 * color.b);
	// Assign back
	COLOR.rgb = color;
}