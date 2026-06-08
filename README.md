<div align="center">
    <h1> Segmentation of Blood Films to Detect Viruses and Bacteria</h1>
    <h3>Automated Pathogen Detection Using Image Processing Techniques</h3>
</div>

##  About

A **MATLAB-based system** to automatically detect and segment viruses and bacteria from blood film images. The system uses advanced image processing techniques including Canny edge detection, active contour segmentation, watershed algorithm, and circularity-based object recognition to identify pathogens and differentiate them from red blood cells.

Traditional methods of detecting viruses and bacteria in blood films rely on manual examination by experts, which is time-consuming and prone to human error. This project introduces an automated approach that accelerates the diagnostic process while maintaining high accuracy.

##  Pipeline Overview

┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│   Input Image   │────▶│  Pre-processing │────▶│  Edge Detection │
│  (Blood Film)   │     │ (Grayscale +    │     │  (Canny Method) │
└─────────────────┘     │  Rescale +      │     └────────┬────────┘
                        │   Histogram)    │              │
                        └─────────────────┘              ▼
┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│    Results      │◀────│    Object       │◀────│   Thresholding  │
│ (RBCs in Red,   │     │  Recognition    │     │  (Otsu Method)  │
│ Bacteria in Blue│     │ (Circularity    │     └─────────────────┘
└─────────────────┘     │   Analysis)     │
                        └─────────────────┘
                              ▲
                              │
                        ┌─────────────────┐
                        │    Watershed    │
                        │   Algorithm     │
                        └─────────────────┘

Tech Stack
Category	Technologies
Programming Language	MATLAB
Image Processing	Image Processing Toolbox
Edge Detection	Canny Edge Detection
Segmentation	Active Contour, Watershed Algorithm
Thresholding	Otsu's Method
Morphological Operations	Imfill, Bwareaopen, Bwmorph, Imerode
Feature Analysis	Circularity Calculation, Perimeter, Area

📈 Results
Segmentation Output
*(Insert your Figure 1 - Microscopic view of blood smear here)*

Figure 1: Microscopic view of a stained blood smear showing white blood cells surrounded by bacteria

*(Insert your Figure 2 - Gray thresholding here)*

Figure 2: Gray thresholding of blood film

*(Insert your Figure 3 - Denoising here)*

Figure 3: Denoising using bwareaopen

*(Insert your Figure 4 - Active contour segmentation here)*

Figure 4: Active Contour Segmentation

*(Insert your Figure 5 - Final segmentation results here)*

*Figure 5: Final segmentation results - Red blood cells (red), Bacteria (blue)*    
