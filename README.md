# ClipApp in Flutter

## Overview

`ClipApp` (Clipped Rounded Rectangle) is a Flutter widget that trims its child to fit a rounded-rectangle outline by removing the parts that fall outside the curved corners. It works with any widget, including images, buttons, containers, and cards.

A `Container` with `borderRadius` only rounds the outer box (its decoration), while the content inside keeps its sharp corners. `ClipApp` shapes the child widget itself, so the content is actually cut into the rounded form.

## Properties

### 1. `borderRadius: BorderRadius.circular()`
Applies the same corner radius to all four corners.

### 2. `borderRadius: BorderRadius.only()`
Applies a radius to chosen corners only, leaving the others square.

### 3. `clipBehavior: Clip.hardEdge`
Sets how the clipped edge is drawn. `Clip.hardEdge` is quicker to render but gives slightly jagged edges. The default, `Clip.antiAlias`, draws smoother edges.

## How to Run

1. Clone the repository.
2. Place four images named `image1.jpg`, `image2.jpg`, `image3.jpg`, and `image4.jpg` in the `assets` folder.
3. Run `flutter pub get` to install the dependencies.
4. Run `flutter run` to launch the app.

## Final Output Screenshot

<img width="325" height="498" alt="image" src="https://github.com/user-attachments/assets/a87cdf47-3d5a-42da-b113-785dd8adee28" />