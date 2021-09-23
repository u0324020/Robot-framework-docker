# Actions CI/CD example ![example workflow](https://github.com/u0324020/Actions-CI/actions/workflows/cicd.yml/badge.svg)

POC GitHub action ci/cd

The path of workflow in .github/workflows/
- actions-cicd.yml
    ci-job ( TODO- L1 test, robotframework report )
    cd-job ( TODO- harbor robot ac in k8s secret )
- release.yml --merge only
    release-job

### Github Actions wiki
- https://wiki.jarvis.trendmicro.com/pages/viewpage.action?pageId=1048916100
- https://wiki.jarvis.trendmicro.com/display/MSBD/Github+Actions+-+Runner

###  status badge for a workflow
https://docs.github.com/en/actions/managing-workflow-runs/adding-a-workflow-status-badge

docker network create test-net
docker run --name poc -d --network test-net -p 8080:8080 demo-service

Maybe using bridge network