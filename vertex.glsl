
uniform float uSize;
uniform float uTime;
attribute float aScale;
attribute vec3 aMovement;
varying vec3 vColor;

//Can't send uv as a varying because each vertex is a particle
//Have to use gl_PointCoord instead
void main()
{
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);
  // modelPosition.z+=sin(uTime);

  modelPosition.x+=aMovement.x*sin(uTime);
  modelPosition.y+=aMovement.y*sin(uTime);
  modelPosition.z+=aMovement.z*cos(uTime);

  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectedPosition = projectionMatrix * viewPosition;

  gl_Position = projectedPosition;

  //size
  gl_PointSize = aScale * uSize;
  gl_PointSize *= ( 1.0 / - viewPosition.z );

  //color
  vColor=color;

}
