# BrainMorphometry_DiminishedGrowth_BEANstudy_2021
Corresponds to doi.org/10.1016/j.dcn.2021.101029


This repository houses code (or links to code) used for the article:

Ted K. Turesky, Talat Shama, Shahria Hafiz Kakon, Rashidul Haque, Nazrul Islam, Amala Someshwar, Borjan Gagoski, William A. Petri, Charles A. Nelson, Nadine Gaab,
Brain Morphometry and Diminished Physical Growth in Bangladeshi Children Growing up in Extreme Poverty: a Longitudinal Study,
Developmental Cognitive Neuroscience, 2021,101029: doi.org/10.1016/j.dcn.2021.101029.

All code has been customized to the input for this particular study, and implemented on MacOSX, but can be adapted be replacing pertinent paths, filenames, etc.

Raw images were first converted from dicom to nifti format, then inspected for artifacts. Analyses of remaining images (available in BIDS format here: insert link) relied predominantly on Mindboggle software (Klein et al., 2017), which was run in a Docker container according to the "Run one command" instructions here: https://mindboggle.info/. 

Following outputs (from subdirectories of mindboggle123_output > mindboggled > $sub-n) were analyzed:

    .
    ├── freesurfer_wmparc_labels_in_hybrid_graywhite.nii.gz      <-- Volumes generated with ANTS and FreeSurfer using FreeSurfer labels 
    ├── label_shapes.csv                                         <-- Surface-based measures      

As the surface-based measures we analyzed were originally output as 31 (cortical area) x 100 (surface-based measure) spreadsheets, in relatively distant subdirectories, we first consolidated all *.csv files into one directory as $sub-n_label_shapes.csv, then submitted them to the python code consolidateShapes.ipynb to further consolidate measures of interest (area, cortical thickness (mean), travel depth (mean), mean curvature (mean).

For statistical analyses, the following code was used:

    .
    ├── anthroSemiPart.m                                        <-- Matlab function for semi-partial correlations
    ├── anthroMeds.R                                            <-- R script for mediation analyses. Requires input of *.csv file of measures

For visualizations, the following code was used:

    .
    ├── anthroMeds.R                                            <-- R script for rendering brain maps of areas significant in semi-partial correlation analyses
    ├── anthroMeds.R                                            <-- R script for rendering brain maps of areas significant in the mediation analyses


For questions, please contact theodore_turesky(at)gse.harvard.edu




