# Micro-Ecosystem Simulator

Simulated the dynamics of the inquiline food web inside *Sarracenia*
pitcher plants. A description of the model can be found in Sirota et
al. 2013 and Lau et al. 2018.

You can explore the response of different state variables of the
pitcher plant model to changes food addition or parameterizations of
the model.

# Running the simulator

The model is implemented in Shiny and can be accessed at the following:

- https://harvardforest.shinyapps.io/virtualpitcherplant/

The model can also be run from R using the following:

```R
library(shin)
runGitHub("HarvardForest/virtualPitcherPlant")

```

# References
Sirota, J., B. Baiser, N. J. Gotelli, A. M. Ellison, Organic-matter
loading determines regime shifts and alternative states in an aquatic
ecosystem, Proceedings of the National Academy of Sciences 110 (19)
(2013) 7742– 7747. doi:10.1073/pnas.1221037110.


Lau, M.K., B. Baizer, A. Northrop, N. J. Gotelli, A. M. Ellison,
Regime shifts and hysteresis in the pitcher-plant
microecosystem. bioRxiv 087296. doi: https://doi.org/10.1101/087296. 
