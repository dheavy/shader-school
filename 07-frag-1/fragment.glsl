precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)
#define OUTSIDE_COLOR   vec4(0.3804, 0.7647, 1.0, 1.0)
#define CENTER          vec2(256.0, 256.0)
#define RADIUS          float(128.0)

void main() {
  float dist = sqrt(
    (CENTER.x - gl_FragCoord.x) * (CENTER.x - gl_FragCoord.x) +
    (CENTER.y - gl_FragCoord.y) * (CENTER.y - gl_FragCoord.y)
  );
  if(dist < RADIUS) {
    gl_FragColor = CIRCLE_COLOR;
  } else {
    gl_FragColor = OUTSIDE_COLOR;
  }
}
