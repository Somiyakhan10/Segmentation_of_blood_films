<div align="center">
    <h1> Segmentation of Blood Films to Detect Viruses and Bacteria</h1>
    <h3>Automated Pathogen Detection Using Image Processing Techniques</h3>
</div>

##  About

A **MATLAB-based system** to automatically detect and segment viruses and bacteria from blood film images. The system uses advanced image processing techniques including Canny edge detection, active contour segmentation, watershed algorithm, and circularity-based object recognition to identify pathogens and differentiate them from red blood cells.

Traditional methods of detecting viruses and bacteria in blood films rely on manual examination by experts, which is time-consuming and prone to human error. This project introduces an automated approach that accelerates the diagnostic process while maintaining high accuracy.

##  Pipeline Overview

<img width="580" height="467" alt="image" src="https://github.com/user-attachments/assets/249c4244-07ff-4da4-ae2c-5eb1b88013af" />


📊 Results
Figure 1: Microscopic View of Blood Smear
Microscopic view of a stained blood smear revealing a white blood cell at the center, surrounded by clusters of bacteria
<img width="485" height="401" alt="image" src="https://github.com/user-attachments/assets/fff7f1fd-bd59-43f2-a84f-2ab0e7205fcc" />


*Figure 1: Microscopic view of a stained blood smear showing a white blood cell (lymphocyte/monocyte) at the center, surrounded by clusters of bacteria*

Figure 2: Gray Thresholding
Gray thresholding applied to the blood film image
<img width="488" height="372" alt="image" src="https://github.com/user-attachments/assets/d5b15d87-6fa1-4cfb-a14d-59f5f4fde341" />



Figure 2: Gray thresholding of blood film

Figure 3: Denoising Using Bwareaopen
Noise removal using bwareaopen function
<img width="493" height="424" alt="image" src="https://github.com/user-attachments/assets/9589bf7c-9f9a-403a-b30b-b6984df7b5ca" />


Figure 3: Denoising through bwareaopen

Figure 4: Active Contour Segmentation
Active contour segmentation for precise boundary detection

<img width="484" height="396" alt="image" src="https://github.com/user-attachments/assets/afd2b609-9c02-4f87-969c-f30bd92bc7ce" />


Figure 4: Active Contour Segmentation

Figure 5: Final Segmentation Results
Final results showing red blood cells in RED and bacteria in BLUE

<img width="495" height="423" alt="image" src="https://github.com/user-attachments/assets/b20826a2-d41d-483f-9cdd-a317299ae7bf" />


Figure 5: Segmentation results where red blood cells are highlighted in red and bacterial cells in blue



*Figure 5: Final segmentation results - Red blood cells (red), Bacteria (blue)*    
