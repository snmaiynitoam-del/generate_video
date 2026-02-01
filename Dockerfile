# Use pre-built generate_video v1.0.6 image (has all models already!)
FROM wlsdml1114/generate_video:generate_video_v1.0.6

# Just add our custom NSFW LoRAs (~800MB instead of 25GB+)
RUN wget -q https://huggingface.co/snailmana99/wan22-video-loras/resolve/main/deepthroat_i2v_high.safetensors \
    -O /ComfyUI/models/loras/deepthroat_high.safetensors && \
    wget -q https://huggingface.co/snailmana99/wan22-video-loras/resolve/main/deepthroat_i2v_low.safetensors \
    -O /ComfyUI/models/loras/deepthroat_low.safetensors

CMD ["/entrypoint.sh"]
