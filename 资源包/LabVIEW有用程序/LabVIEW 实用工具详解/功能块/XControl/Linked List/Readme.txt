This example shows a new method for dynamically creating or destroying controls or indicators that have completely independent properties. This idea is all based on instantiating multiple reentrant copies of the Thermometer_Object VI and hosting them in a XControl with a subpanel.

The Thermometer_Object VI implements an idea analogous to a linked list, which is common in object oriented programming. In a linked list, each object consists of the object itself and a link to the next object in the list. Here, instead of links, each VI contains the control of interest (here a thermometer) and a subpanel to hold the next item. Multiple copies of this VI are instantiated to equal the number of visible "controls" on the front panel. Each time an item is created, the root XControl inserts a copy of this VI into its own subpanel. This gives the appearance that the number of controls expands to the left. The root XControl is in charge of managing all the references and updating the values for these indicators. It does this by sending Value Change commands to the Item_Command control embedded in each Thermometer_Object VI.

To run this example, open up Thermometer_Example.vi and look at the instructions. Refer to the XControl and Thermometer_Object.vi for more information on how to create or modify this example.

DISCLAIMER: This is a new technique of (I would imagine and correct me if I'm wrong) my invention in LabVIEW. It is not suitable at this point for mass-distribution, but it does solve some interesting problems. Namely:

1. The ability to have an array-type object of controls or indicators that have independent properties.
2. The ability to have an array-type object of waveform graphs, other xcontrols, subpanels, etc. This is not normally possible.

Other disclaimers: Currently all the values are updated using control references, which will impede performance on a large scale, or with a rapid refresh rate. I haven't yet worked on any techniques that would control the update rate of the controls. Also, beware of memory leaks and error handling in my code. I've been focusing more on implementing the idea right now, rather than making it suitable for full-scale development.

And finally, enjoy!