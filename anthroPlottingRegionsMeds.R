# Plots FreeSurfer-labeled brain regions that were involved in indirect effects (either was dependent variables or mediators) using the ggseg package.
# For questions: theodore_turesky@gse.harvard.edu

library(ggseg)


# Plots left hemisphere cortical and white matter areas whose relation with SES was mediated by HAZ, WAZ, or WHZ
someData = data.frame(
  region = c("posterior cingulate","corpus callosum", "fusiform", "precentral"),   
  p = c(1,2,3,4), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3","4"), 
    values = c("red","dodgerblue","dodgerblue","dodgerblue"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainLGMWM-meds.pdf', plot = last_plot(), device=cairo_pdf)


# Plots left hemisphere cortical and white matter areas whose relation with SES was mediated by HAZ, WAZ, or WHZ
someData = data.frame(
  region = c("superior temporal", "corpus callosum","precentral"),   
  p = c(1,2,3), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3"), 
    values = c("red", "dodgerblue","dodgerblue"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRGMWM-meds.pdf', plot = last_plot(), device=cairo_pdf)


# Plots left hemisphere subcortical areas whose relation with SES was mediated by HAZ, WAZ, or WHZ
someData = data.frame(
  region = c("amygdala","pallidum","thalamus"),   
  p = c(1,2,3), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.4) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3"), 
    values = c("green","green","green"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainLSub-meds.pdf', plot = last_plot(), device=cairo_pdf)


# Plots right hemisphere subcortical areas whose relation with SES was mediated by HAZ, WAZ, or WHZ
someData = data.frame(
  region = c("amygdala", "pallidum"),   
  p = c(1,2), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.4) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2"), 
    values = c("green", "green"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRSub-meds2.pdf', plot = last_plot(), device=cairo_pdf)


# Plots left hemisphere subcortical areas that mediated relation between HAZ, WAZ, or WHZ and FIQ
someData = data.frame(
  region = c("pallidum"),   
  p = c(1), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.7) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1"), 
    values = c("green"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainLSub-fiq.pdf', plot = last_plot(), device=cairo_pdf)


# Plots right hemisphere subcortical areas that mediated relation between HAZ, WAZ, or WHZ and FIQ
someData = data.frame(
  region = c("ventral DC"),   
  p = c(1), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.7) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1"), 
    #labels = c("Thalamus", "Pallidum", "Amygdala", "Ventral DC"), 
    values = c("green"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRSub-fiq.pdf', plot = last_plot(), device=cairo_pdf)
