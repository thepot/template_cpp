# Cmake project

This template project use cmake for building the application and create the automate testing.

## CMake Configuration

During the configuraiton then compilation, a lot of file will create (temporaly make, the object file, the dependency file...) so for manage that properly, he need to use a temporaly folder. The most of the time, this folder was call "build".

```bash
cmake -B <path-to-build> -S <path-to-source>
```
with the option -B, cmake will create the folder, if it doesn't exist

Exemple :
```bash
cmake -B build -S .
```

### Option from this project 

```bash 
cmake -B build -S . -D ENABLE_TESTS=True # for create all tests
cmake -B build -S . -D ENABLE_TEST_XXXXX=True # for create the test for the target XXXXX
cmake -B build -S . -D ENABLE_SAMPLES=True # for create all sample for this project
cmake -B build -S . -D ENABLE_SAMPLE_XXXXX=True # for create the sample for this target XXXXX
```

## CMake Compilation

```bash
cmake --build build
```

### Option

```bash
cmake --build build --target <target> # for compile one target and this dependency
cmake --build build --parallel [<N>] # for compile all the project in parallel, the "N" was optionnal and it's the maximal thread that make (use below) can use (by default, it's no limit)
cmake --build build --target clean # for clean all application and library
```