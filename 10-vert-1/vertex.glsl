precision highp float;

uniform float theta;

attribute vec2 position;

vec2 rotate(vec2 uv, float rotation) {
  float s = sin(rotation);
  float c = cos(rotation);
  mat2 m = mat2(c, s, -s, c);
  return m * uv;
}

void main() {
  //TODO: rotate position by theta radians about the origin
  gl_Position = vec4(rotate(position, theta), 0, 1.0);
}
