Shader "Custom/HeatVision"
{
	Properties
	{
		// _Color ("Color", Color) = (1,1,1,1)
		// _MainTex ("Albedo (RGB)", 2D) = "white" {}
		// _Glossiness ("Smoothness", Range(0,1)) = 0.5
		// _Metallic ("Metallic", Range(0,1)) = 0.0
		_ObjectCenter("ObjectCenter", Vector) = (0, 0, 0)
		_HeatAmount("HeatAmount", Range(1,10)) = 0.5
	}

		SubShader
	{
		Tags { "RenderType" = "Opaque" }
		CGPROGRAM
		#pragma surface surf Lambert

		float4 _ObjectCenter;
		float _HeatAmount;
		float distance;

		struct Input {
			float4 color : COLOR;
			float3 worldPos;
		};
		void surf(Input IN, inout SurfaceOutput o) {
			//distance = sqrt(pow(IN.worldPos.x - _ObjectCenter[0], 2) + pow(IN.worldPos.y - _ObjectCenter[1], 2) + pow(IN.worldPos.z - _ObjectCenter[2], 2)) / (1 / _HeatAmount);
			distance = sqrt(pow(IN.worldPos.x - _ObjectCenter[0], 2) + pow(IN.worldPos.y - _ObjectCenter[1], 2) + pow(IN.worldPos.z - _ObjectCenter[2], 2));
			//distance = _HeatAmount / distance;

			float4 newColor = { 0, 0, 0, 0 };
			if (distance < 1 / _HeatAmount) {
				newColor[0] = 1;
			}
			else if (distance < 2 / _HeatAmount) {
				newColor[1] = 1;
			}
			else if (distance < 3 / _HeatAmount) {
				newColor[2] = 1;
			}
			/*else {
				newColor = { 0, 0, 1, 1 };
			}*/
			o.Albedo = newColor;
		}
		ENDCG
	}

	FallBack "Diffuse"
}
