Copyrighted by icurate.cc
YOLO-NAS is a 2023 model.
Couldn't find downloadable weights with the right license (owned by Nvidia) so I tried to train on coco 2017 dataset on a RTX3070 to see how long it would take. For 200 epoch, it would have taken 250 days or so - and even then I'm not sure how well the training parameters are.
Attached a dockerfile for installation and jupyter notebook file example with some AI-recommended training options for whoever wants to make public contribution for generating usable model weights - lots of compute time.

to build dockerfile:
docker build -t object_recognition -f {projectdir}\object_recognition.Dockerfile {projectdir}

to run docker container from build - port 8888 allows viewing jupyter notebook, -gpus all lets gpu work with neuralnet:
docker run -it -p 8888:8888 --gpus all -v {projectdir}:/app -w /app object_recognition bash

to open jupyter notebook in docker container:
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root

cocofiles pathing:
app/coco/annotations/instances_{train2017/val2017}.json
app/coco/images/train2017/(imglist)
app/coco/images/val2017/(imglist)
