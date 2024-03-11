#Prepare
apt-get update
apt-get install -y unzip
apt-get install -y vim

#Install Custom Nodes
# shellcheck disable=SC2164
cd /workspace/ComfyUI/custom_nodes/
git clone https://github.com/WASasquatch/was-node-suite-comfyui/
pip install -r ./was-node-suite-comfyui/requirements.txt
git clone https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes.git
git clone https://github.com/SeargeDP/SeargeSDXL.git
wget -O ComfyUI_MileHighStyler "https://civitai.com/api/download/models/264644?&token=41f6e8d688bd119c8ba0cd374a21c09f"
mkdir MileHighStyler
unzip ComfyUI_MileHighStyler -d MileHighStyler/
git clone https://github.com/Fannovel16/comfyui_controlnet_aux/
# shellcheck disable=SC2164
cd comfyui_controlnet_aux
pip install -r requirements.txt

#Install LoRas
# shellcheck disable=SC2164
cd /workspace/ComfyUI/models/loras/
wget -O add_details.safetensors "https://civitai.com/api/download/models/62833?&token=41f6e8d688bd119c8ba0cd374a21c09f"
wget "https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_offset_example-lora_1.0.safetensors"
wget -O sdxl_photorealistic_slider_v1-0.safetensors "https://civitai.com/api/download/models/126807?&token=41f6e8d688bd119c8ba0cd374a21c09f"
wget -O neg4all_bdsqlsz_xl_V6.safetensors "https://civitai.com/api/download/models/132103?&token=41f6e8d688bd119c8ba0cd374a21c09f"

#Install ControlNet
# shellcheck disable=SC2164
cd /workspace/ComfyUI/models/controlnet/
wget -O controlnetPreTrained_cannyV10.safetensors "https://civitai.com/api/download/models/10971?&token=41f6e8d688bd119c8ba0cd374a21c09f"
wget -O controlnetPreTrained_cannyDifferenceV10.safetensors "https://civitai.com/api/download/models/11724?&token=41f6e8d688bd119c8ba0cd374a21c09f"
wget -O canny-xl1.0.safetensors "https://huggingface.co/diffusers/controlnet-canny-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors"
wget "https://huggingface.co/SargeZT/controlnet-sd-xl-1.0-depth-16bit-zoe/resolve/main/depth-zoe-xl-v1.0-controlnet.safetensors"
wget "https://huggingface.co/thibaud/controlnet-openpose-sdxl-1.0/resolve/main/OpenPoseXL2.safetensors"
wget "https://huggingface.co/SargeZT/controlnet-sd-xl-1.0-softedge-dexined/resolve/main/controlnet-sd-xl-1.0-softedge-dexined.safetensors"

#Install Upscale Models
# shellcheck disable=SC2164
cd /workspace/ComfyUI/models/upscale_models/
wget "https://huggingface.co/gemasai/4x_NMKD-Siax_200k/resolve/main/4x_NMKD-Siax_200k.pth"
wget "https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.1/RealESRGAN_x2plus.pth"

#Install Standard Models
# shellcheck disable=SC2164
cd /workspace/ComfyUI/models/checkpoints/
wget -O epicrealism_naturalSin.safetensors "https://civitai.com/api/download/models/160989?&token=41f6e8d688bd119c8ba0cd374a21c09f"
wget -O juggernaut_reborn.safetensors "https://civitai.com/api/download/models/274039?&token=41f6e8d688bd119c8ba0cd374a21c09f"
wget -O juggernautXL_V9Rundiffusion.safetensors "https://civitai.com/api/download/models/348913?&token=41f6e8d688bd119c8ba0cd374a21c09f"
wget -O babes30.safetensors "https://civitai.com/api/download/models/232703?&token=41f6e8d688bd119c8ba0cd374a21c09f"
