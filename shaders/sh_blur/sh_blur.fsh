///@
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float blur_radius; // Радиус размытия
uniform float screen_width;
uniform float screen_height;

void main() {
    vec4 color = vec4(0.0);
    vec2 tex_offset = vec2(blur_radius / screen_width, blur_radius / screen_height);

    // Применение размытия
    for (float x = -4.0; x <= 4.0; x++) {
        for (float y = -4.0; y <= 4.0; y++) {
            vec2 offset = vec2(x, y) * tex_offset;
            color += texture2D(gm_BaseTexture, v_vTexcoord + offset) / 81.0;
        }
    }
    gl_FragColor = v_vColour * color;
}
