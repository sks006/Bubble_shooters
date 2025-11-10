# 📁 Bubble_shooters

This is bubbler shooter game build by c++

## 🧩 Project Features (C++ Bubble Shooter Game)

### **Feature 1 — Real-Time Physics and Motion**

* **Syntax Rule:** Uses SFML’s timing system to calculate frame delta-time for consistent movement.
* **Core Rule:** Frame-independent motion — game speed remains stable regardless of system performance.
* **Purpose:** Keeps bubble movement smooth and realistic at any frame rate.
* **Usage:** Applied in the game loop’s update phase to control object motion over time.

------------------

### **Feature 2 — Mouse-Controlled Aiming and Shooting**

* **Syntax Rule:** Maps mouse coordinates from screen space to game-world coordinates.
* **Core Rule:** Direction vector normalization ensures constant bubble speed.
* **Purpose:** Enables intuitive aiming and shooting control using the mouse.
* **Usage:** Triggered by mouse click events to determine bubble direction and fire.

------------------

### **Feature 3 — Object-Oriented Game Architecture**

* **Syntax Rule:** Game entities (like bubbles) are represented as classes with encapsulated data and behavior.
* **Core Rule:** Follows the **Single Responsibility Principle** — each class handles a distinct function.
* **Purpose:** Enhances modularity, readability, and scalability of the codebase.
* **Usage:** The `Bubble` class manages individual objects, while the `Game` class handles logic, input, and rendering.

------------------

### **Feature 4 — Real-Time Rendering with SFML**

* **Syntax Rule:** Uses SFML’s rendering loop: clear → draw → display.
* **Core Rule:** Double buffering — the screen updates smoothly without flickering.
* **Purpose:** Ensures continuous, flicker-free animation and real-time graphics refresh.
* **Usage:** The render phase continuously draws bubbles, background, and UI elements every frame.

------------------

### **Feature 5 — Modular Asset & Build System**

* **Syntax Rule:** Separates source, assets, and build configurations via Makefile or CMake.
* **Core Rule:** Follows modular project organization and DRY (Don’t Repeat Yourself) principles.
* **Purpose:** Simplifies compilation, improves maintainability, and allows easy scaling of project files.
* **Usage:** Each component (code, texture.
----------------------

### bubble-shooterter/

├── assets/

│   ├── red.png

│   ├── blue.png

│   ├── green.png

│   ├── yellow.png

│   └── background.png

├Makefileile

├── README.md

└── src/

    ├── main.cpp
    
    ├── Game.cpp
    
    ├── Game.hpp
    
    ├── Bubble.cpp
    
    ├── Bubble.hpp
    
    └── Utils.hpp
    

