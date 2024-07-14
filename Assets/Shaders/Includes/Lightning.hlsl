#ifndef CUSTOM_LIGHTING_INCLUDED
#define CUSTOM_LIGHTING_INCLUDED

void CalculateMainLight_float(float3 WorldPos, out float3 Direction, out float3 Color) {
#ifdef SHADERGRAPH_PREVIEW
    Direction = float3(0.5, 0.5, 0.0); // Ensure all components are initialized
    Color = float3(1, 1, 1);           // Ensure all components are initialized
#else
    Light mainLight = GetMainLight(0);
    Direction = mainLight.direction;
    Color = mainLight.color;
#endif
}

#endif
