#pragma once

#include <SFML/Graphics.hpp>
#include <random>

// Return a random integer in [a, b]
inline int randInt(int a, int b) {
    static std::mt19937 rng(std::random_device{}());
    std::uniform_int_distribution<int> dist(a, b);
    return dist(rng);
}

// Simple enum for bubble colors
enum class BubbleColor {
    Red,
    Blue,
    Green,
    Yellow
};

// Convert BubbleColor to filename (expects files in assets/)
inline const char* colorToFilename(BubbleColor c) {
    switch (c) {
        case BubbleColor::Red:    return "assets/red.png";
        case BubbleColor::Blue:   return "assets/blue.png";
        case BubbleColor::Green:  return "assets/green.png";
        case BubbleColor::Yellow: return "assets/yellow.png";
    }
    return "assets/red.png";
}

// Convert index to BubbleColor (random pick helper)
inline BubbleColor randomColor() {
    int v = randInt(0, 3);
    return static_cast<BubbleColor>(v);
}
