
#aoflag train sims
nvidia-docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
-v /home/yabebal:/xhome \
-v /data/alireza/:/data \
--name ttx aoflagger/kern:latest \
/bin/bash /xhome/aoflagger/run.sh /data/data/hide_sims_train/calib_1year/flagged/TEST_MP_PXX_*.fits 


#aoflag test sims
nvidia-docker run -it --rm -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /home/yabebal:/xhome --name ttx rfi/cnn:latest \
/bin/bash /xhome/aoflagger/run.sh /data/data/hide_sims_test/calib_1month/flagged/TEST_MP_PXX_201705* 


#aoflag test sims
#  nvidia-docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  \
# -v /home/yabebal:/xhome \
# -v /data/alireza/:/data \
# --name ttx aoflagger/kern:latest \
# /bin/bash /xhome/aoflagger/run.sh /data/data/hide_sims_test/calib_play/TEST_MP_PXX_*.fits 

