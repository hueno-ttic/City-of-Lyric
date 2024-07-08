
varying vec3 v_position; // ビュースペースでの頂点の位置

uniform vec3 fogColor;
uniform float fogNear;
uniform float fogFar;

void main(void) {
    float fogFactor = clamp((fogFar - length(v_position)) / (fogFar - fogNear), 0.0, 1.0);
    vec3 color = vec3(1.0, 1.0, 1.0); // ベースカラー（例として白色を使用）

    // フォグを適用
    vec3 finalColor = mix(color, fogColor, fogFactor);

    gl_FragColor = vec4(finalColor, 1.0);
}
