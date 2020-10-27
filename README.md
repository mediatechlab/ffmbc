Compilation was tested on ubuntu 18 64 bits

FFmbc usage:

In order to generate a **Sony MXF XDCAM HD** file

ffmbc -i input.MOV -tff -target xdcamhd422 -an output.MXF -acodec pcm_s24le -ar 48000 -newaudio -acodec pcm_s24le -ar 48000 -newaudio -map_audio_channel 0:1:0:0:1:0 -map_audio_channel 0:1:0:0:2:0

To generate a **Sony MXF IMX50 SD** file

ffmbc -i input.MOV -tff -target imx50 -an -y output.MXF -acodec pcm_s24le -ar 48000 -newaudio -acodec pcm_s24le -ar 48000 -map_audio_channel 0:1:0:0:1:0
