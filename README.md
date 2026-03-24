Copyright (c) 2026 icurate.cc under Apache 2.0 License  
Visit website to reach out or more inquiry. 

YOLO-NAS is a 2023 model by Deci AI/Nvidia under Apache 2.0 LIcense.  
Couldn't find downloadable weights with the right license (owned by Nvidia) so I tried to train on coco 2017 dataset on a single RTX GPU to see how long it would take. For 200 epoch, it would have taken 250 days or so - and even then I'm not sure how well the training parameters are.
Attached a jupyter notebook file example with some AI-recommended training options for whoever wants to make public contribution for generating usable model weights - lots of compute time.

to open jupyter notebook in docker container:  
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root  
  
cocofiles pathing:  
app/coco/annotations/instances_{train2017/val2017}.json  
app/coco/images/train2017/(imglist)  
app/coco/images/val2017/(imglist)  
