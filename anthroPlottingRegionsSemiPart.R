# Plots FreeSurfer-labeled brain regions that were related to diminished growth estimates using the ggseg package.
# For questions: theodore_turesky@gse.harvard.edu


library(ggseg)


# Plots left hemisphere cortical areas related to HAZ
someData = data.frame(
  region = c("posterior cingulate"),   
  p = c(1), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1"), 
    values = c("#FF6C90"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainLGM-haz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots right hemisphere cortical areas related to HAZ
someData = data.frame(
  region = c("superior temporal"),   
  p = c(1), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1"), 
    values = c("#E7861B"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRGM-haz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots left hemisphere white matter areas related to HAZ
someData = data.frame(
  region = c("bankssts","fusiform","paracentral","precentral","rostral middle frontal","supramarginal"),   
  p = c(1,2,3,4,5,6), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3","4","5","6"), 
    values = c("#00BBDB","#00B8E5","#529EFF","#7997FF","#BF80FF","#E76BF3"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainLWM-haz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots right hemisphere white matter areas related to HAZ
someData = data.frame(
  region = c("inferior parietal","lateral orbitofrontal","precentral","precuneus","supramarginal"),   
  p = c(1,2,3,4,5), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3","4","5"), 
    values = c("#00B4EF","#00A5FF","#7997FF","#9590FF","#E76BF3"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRWM-haz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots left hemisphere subcortical areas related to HAZ
someData = data.frame(
  region = c("amygdala","pallidum","thalamus proper"),   
  p = c(1,2,3), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.4) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3"), 
    values = c("#72B000", "#39B600", "#00BC59"), 
    na.value="grey") +
  theme(legend.position = "none")
  
ggsave('brainLSub-haz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots right hemisphere subcortical areas related to HAZ
someData = data.frame(
  region = c("amygdala", "pallidum","thalamus proper","ventral DC"),   
  p = c(1,2,3,4), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.4) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3","4"), 
    values = c("#72B000", "#39B600", "#00BC59", "#00C08D"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRSub-haz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots left hemisphere cortical areas related to WAZ
someData = data.frame(
  region = c("posterior cingulate"),   
  p = c(1), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1"), 
    values = c("#FF6C90"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainLGM-waz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots right hemisphere cortical areas related to WAZ
someData = data.frame(
  region = c("precentral","superior parietal","supramarginal"),   
  p = c(1,2,3), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3"), 
    values = c("#FC717F","#F8766D","#D89000"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRGM-waz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots left hemisphere white matter areas related to WAZ
someData = data.frame(
  region = c("corpus callosum","bankssts", "fusiform","paracentral","precentral","rostral middle frontal"),   
  p = c(1,2,3,4,5,6), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3","4","5","6"), 
    values = c("#00C08B", "#00BBDB", "#00B8E5","#529EFF","#7997FF","#BF80FF"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainLWM-waz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots right hemisphere white matter areas related to WAZ
someData = data.frame(
  region = c("corpus callosum","inferior parietal","precentral","precuneus","supramarginal"),   
  p = c(1,2,3,4,5), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3","4","5"), 
    values = c("#00C08B","#00B4EF","#7997FF","#9590FF","#E76BF3"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRWM-waz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots left hemisphere subcortical areas related to WAZ
someData = data.frame(
  region = c("pallidum","thalamus proper"),   
  p = c(1,2), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.4) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2"), 
    values = c("#39B600", "#00BC59"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainLSub-waz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots right hemisphere subcortical areas related to WAZ
someData = data.frame(
  region = c("amygdala","pallidum","thalamus proper", "ventral DC"),   
  p = c(1,2,3,4), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.4) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3","4"), 
    values = c("#72B000", "#39B600", "#00BC59","#00C08D"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRSub-waz.pdf', plot = last_plot(), device=cairo_pdf)


# Plots right hemisphere white matter areas related to WHZ
someData = data.frame(
  region = c("inferior parietal","precentral","supramarginal"),   
  p = c(1,2,3), stringsAsFactors = FALSE); 
someData$hemi = "right"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.2) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3"), 
    values = c("#00B4EF","#7997FF","#E76BF3"), 
    na.value="grey") +
  theme(legend.position = "none")

ggsave('brainRWM-whz.pdf', plot = last_plot(), device=cairo_pdf)


# Generate cortical and white matter legends
someData = data.frame(
  region = c("posterior cingulate", "precentral", "superior parietal", "superior temporal", "supramarginal", "corpus callosum", "bankssts", "fusiform", "inferior parietal", "lateral orbitofrontal", "paracentral", "precentral", "precuneus", "rostral middle frontal", "supramarginal"),   
  p = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, mapping=aes(fill=factor(p)), colour="black", size=.7) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"), 
    labels = c("Posterior Cingulate Cortex","Precentral Cortex", "Superior Parietal Cortex", "Superior Temporal Cortex", "Supramarginal Gyrus",  "Corpus Callosum","Banks, Superior Temporal Sulcus WM","Fusiform WM","Inferior Parietal WM","Lateral Orbitofrontal WM","Paracentral WM","Precentral WM","Precuneus WM","Rostral Middle Frontal WM","Supramarginal WM"),
    values = c("#FF6C90","#FC717F","#F8766D","#E7861B","#D89000","#00C08B","#00BBDB","#00B8E5","#00B4EF","#00A5FF","#529EFF","#7997FF","#9590FF","#BF80FF","#E76BF3"), 
    na.value="grey") +
  
  ggsave('brain-leg1b.pdf', plot = last_plot(), device=cairo_pdf)

# Generate subcortical legend
someData = data.frame(
  region = c("amygdala","pallidum","thalamus proper","ventral DC"),   
  p = c(1,2,3,4), stringsAsFactors = FALSE); 
someData$hemi = "left"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.7) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1","2","3","4"), 
    labels = c("Amygdala", "Pallidum", "Thalamus", "Ventral DC"), 
    values = c("#72B000", "#39B600", "#00BC59","#00C08D"), 
    na.value="grey") +
  
  ggsave('brain-leg2b.pdf', plot = last_plot(), device=cairo_pdf)
