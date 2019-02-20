# icr-transcription-pipeline-docker
dockerfile for containerizing the In Codice Ratio transcription pipeline. Test images not included.

use volume to share test data:
```
docker run -it -v /host/test-img/folder:/home/eval-set erisdelaunay/icr 
```
