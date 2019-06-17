# chesscam
A computer vision-based project to identify chess pieces and their locations

## Basic Use
### Take a set of pictures 
```
cd ~Projects/chesscam/code
./camera.sh 120000 1000
```

**camera.sh parameters**:

**First parameter:** Total camera time. The total amount of time we want the camera to be active.

**Second parameter:** Periodicity of photos. The (approximate) amount of time between photos.

The total camera time divided by the periodicity of the photos is the approximate number of images that will be taken. 
This will save pictures to the `./photos` directory

### Show a 200x200px camera preview
```raspistill -t 0 -p 50,50,200,200```

### Resources

**Image annotation:**

https://hackernoon.com/the-best-image-annotation-platforms-for-computer-vision-an-honest-review-of-each-dac7f565fea

**Useful videos:**

Entire process using YOLO - https://www.reddit.com/r/MachineLearning/comments/8p9car/p_playing_card_detection_with_yolov3_trained_on/

Image labelling steps - https://youtu.be/Rgpfk6eYxJA?t=1036 (Image labelling process)

### Development notes
Start the virtual environment:
```python
# From the project root
chesscamvenv\Scripts\activate

```

### Random Notes
**Tensorflow (GPU version) Setup**
https://www.tensorflow.org/install/gpu

**Tensorflow Object Detection API**
https://github.com/tensorflow/models/tree/master/research/object_detection
https://tensorflow-object-detection-api-tutorial.readthedocs.io/en/latest/install.html

**Tensorflow on a RPi**
https://github.com/EdjeElectronics/TensorFlow-Object-Detection-on-the-Raspberry-Pi

**Installing labelImg**
https://github.com/tzutalin/labelImg
