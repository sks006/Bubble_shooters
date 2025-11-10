# Compiler and flags
CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -Iinclude

# Link flags for SFML (adjust if you use pkg-config)
LDFLAGS := -lsfml-graphics -lsfml-window -lsfml-system

# Build mode (default: release). Use `make MODE=debug` for debug build.
MODE ?= release
ifeq ($(MODE),debug)
  CXXFLAGS += -g -O0
else
  CXXFLAGS += -O2
endif

# Directories and files
SRCDIR := src
OBJDIR := build
SOURCES := $(SRCDIR)/main.cpp $(SRCDIR)/Game.cpp $(SRCDIR)/Bubble.cpp
OBJECTS := $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SOURCES))
TARGET := bubble-shooterter

# Default target
all: $(TARGET)

# Link step: link all object files into executable
$(TARGET): $(OBJECTS)
    $(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

# Compile step: create object file from source; create obj dir as needed
$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
    @mkdir -p $(dir $@)
    $(CXX) $(CXXFLAGS) -c -o $@ $<

# Clean up build artifacts
.PHONY: clean rebuild
clean:
    rm -rf $(OBJDIR) $(TARGET)

# Full rebuild
rebuild: clean all
