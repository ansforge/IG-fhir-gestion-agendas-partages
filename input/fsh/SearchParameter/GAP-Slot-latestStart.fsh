Instance: GAP-Slot-latestStart
InstanceOf: SearchParameter
Usage: #definition
* name = "GAP_Slot_latestStart"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Slot-start"
* experimental = false
* description = "latest start of a potential appointment"
* status = #active
* code = #start
* base = #Slot
* type = #date
* expression = "Slot.start"
* xpath = "f:Slot/f:start"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* comparator[0] = #lt
* comparator[+] = #le