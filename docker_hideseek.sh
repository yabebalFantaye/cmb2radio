nvidia-docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
-v /data/alireza/:/data \
-v /home/yabebal:/xhome \
--name hseek yabebal/aimsska:june26 \
/bin/bash
