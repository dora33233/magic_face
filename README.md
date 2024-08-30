# magic_face
filter.py 实现特效滤镜，复古，铅笔画，漫画 

mask.py 构建面部器官的mask以及皮肤的mask。

makeup. py 实现磨皮、美白、眼睛提亮美妆算法。

organ_swich.py 主要实现五官迁移算法。

old_age 实现基于图层的变老算法。 其中change_age.py 是入口。 

<br>
Dora Notes:

Install dependent packages:
```
pip install -r requirements.txt
```

Entry point of adding filters to the image:

filter.apply_filters(img: nparray, filter_name)

Example:
```
import cv2
import filter
img = cv2.imread("examples/inputs/input_test1.jpg")
output = filter.apply_filter(img,'pencil')
cv2.imwrite("examples/outputs/output_test1_pencil.JPG",output)
```

Run this project in docker
```
docker build -t test-filters .
docker run test-filters
```
