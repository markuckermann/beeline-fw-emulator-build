# beeline-fw-emulator-build
Docker environment for building the fw emulator and running pytest.

# build and deploy
docker build -t markuckermann/beeline-fw-emulator-build:py310 . 
docker image push markuckermann/beeline-fw-emulator-build:py310
