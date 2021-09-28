# Actions CI/CD example ![example workflow](https://github.com/u0324020/Robot-framework-docker/actions/workflows/robot.yml/badge.svg)

[Medium Article](https://janelifelog.medium.com/github-actions-robot-framework-cf6da14180a8)

Fro Robot-framework in Github Actions PoC

### Build Robot Framework Image
`
cd robot
docker build -f ./Dockerfile -t demo-robot .
`

### Run Robot Framework Locally( Testing image-app )
`
cd robot
docker-compose up
`
then, robot testing report will generate under robot/reports path

### Run Robot Framework Locally and Generate Xunit Formate Report for Publish Testing Report
`
docker run -tid — name=demo — network=host -v “$PWD/output:/output” -v “$PWD/suites:/suites” -v “$PWD/scripts:/scripts” -v “$PWD/reports:/reports” robot-container bash
`

`
docker exec -it demo bash
`


###  Display status badge for a workflow
https://docs.github.com/en/actions/managing-workflow-runs/adding-a-workflow-status-badge

### Publish Testing reprot

https://github.com/EnricoMi/publish-unit-test-result-action

## The symbols
[comment]: <> (This heading is linked to from method get_link_and_tooltip_label_md)

The symbols have the following meaning:

|Symbol|Meaning|
|:----:|-------|
|<img src="https://github.githubassets.com/images/icons/emoji/unicode/2714.png" height="20"/>|A successful test or run|
|<img src="https://github.githubassets.com/images/icons/emoji/unicode/1f4a4.png" height="20"/>|A skipped test or run|
|<img src="https://github.githubassets.com/images/icons/emoji/unicode/274c.png" height="20"/>|A failed test or run|
|<img src="https://github.githubassets.com/images/icons/emoji/unicode/1f525.png" height="20"/>|An erroneous test or run|
|<img src="https://github.githubassets.com/images/icons/emoji/unicode/23f1.png" height="20"/>|The duration of all tests or runs|

***Note:*** For simplicity, "disabled" tests count towards "skipped" tests.

### Reference
- https://blog.jdriven.com/2021/05/create-a-docker-image-running-robot-framework/ 
- https://robotframework.org/Selenium2Library/Selenium2Library.html
- https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html