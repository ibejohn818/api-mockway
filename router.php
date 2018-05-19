<?php

//print_r(getallheaders());
//print_r($_SERVER);
//print_r($_ENV);
//passthru("echo $(pwd)");
passthru("docker run --rm -v /home/jhardy/projects/api-mockway:/var/task lambci/lambda:python3.6 index.handler");
