# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++11 -Wall
DEBUG_FLAGS = -g -O0  # Enable debugging symbols and disable optimizations
RELEASE_FLAGS = -O2   # Enable optimizations for release build

# Target executable name
TARGET = SequentialFunctions

# Default rule to build in release mode
all: release

# Release build
release: CXXFLAGS += $(RELEASE_FLAGS)
release: $(TARGET)

# Debug build
debug: CXXFLAGS += $(DEBUG_FLAGS)
debug: $(TARGET)

# Link and generate the executable
$(TARGET): main.o
	$(CXX) -o $(TARGET) main.o

# Compile main.cpp to an object file
main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

# Clean up generated files
clean:
	rm -f $(TARGET) main.o

# Clean up for Windows
clean-win:
	del /Q $(TARGET).exe main.o
