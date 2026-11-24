# Motorola Dolby

The vendor binaries and tuning files come from the Moto G85 5G `malmo_g`
firmware `W1UOS36H.35-39-8`, vendor incremental `6c8be1`.

`dolby-vendor.mk` installs the HAL, audio effects, decoder configuration and
Halcyon Dolby app. The Dolby Codec2 service registers as `default9` alongside
the Qualcomm and Android software component stores. It exposes AC-3, E-AC-3,
E-AC-3 JOC and AC-4.
