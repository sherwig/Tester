varying vec3 vColor;
uniform float uTime;


void main()
{
  //Circle
  // float strength = distance(gl_PointCoord,vec2(0.5));
  // strength = step(0.5,strength);
  // strength = 1.0-strength;
  //

  float strength=1.0*abs(sin(uTime))-distance(gl_PointCoord,vec2(0.5,0.5));
  // gl_FragColor = vec4(strength,strength,strength, 1.0);
   gl_FragColor=vec4(strength*abs(cos(uTime)),1.0,strength*abs(sin(uTime)),1.0);

  //Diffuse point pattern
  // float strength = distance(gl_PointCoord,vec2(0.5));
  // strength =strength*2.0;
  // strength = 1.0-strength;
  // gl_FragColor=vec4(vec3(strength),1.0);

  //Light Point Pattern

//   float strength = distance(gl_PointCoord,vec2(0.5));
// strength = 1.0-strength;
// strength = pow(strength,10.0);
//
// vec3 color = mix(vec3(0.0),vColor,strength);
//
// gl_FragColor=vec4(color*abs(sin(uTime*0.2)),1.0);


}
