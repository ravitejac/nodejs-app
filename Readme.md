# Node.js Docker App – AWS CodePipeline (GitHub OAuth v1)

Sample Node.js application containerized with Docker and built using
AWS CodePipeline + CodeBuild. Source is GitHub (OAuth v1 / PAT) and
images are pushed to Amazon ECR.

---

## Architecture

GitHub (PAT)
  ↓
CodePipeline
  ↓
CodeBuild (Docker)
  ↓
Amazon ECR

---

## Run locally

```bash
docker build -t nodejs-sample .
docker run -p 3000:3000 nodejs-sample
