I am an abstract class.  My concrete subclasses implement datatypes for use in XML documents, as defined in the second edition (dated October 28, 2004) of the W3C Recommendations for XML Schema.   I work closely with XSDClassFactory.

My concrete subclasses can:
	- validate instance values
	- instantiate themselves from valid XML fragments
	- instantiate themselves from native Squeak objects *
	- create derived XML datatypes (subclasses) from valid XSD fragments
	
An instance of one of my concrete subclasses can:
	- answer its canonical representation
	
* You will need to manually define mapping methods to make this work for new subclasses.   I wrote XSDClassFactory to make it easy for me to teach an application new XML formats, so all the mappings in my system are between my native types (SourceClass) and XSDType (TargetClass) subclasses, which I treat as a static output (and occasionally input) format.   Here is what I am doing:

- Use the naming convention TargetClass>>fromSourceClass: for all conversion methods, in both directions.  This naming convention is preferred to SourceClass>>asTargetClass because the protocol of the SourceClass and the TargetClass are typically different. 
- At the top of the SourceClass hierarchy, define a method called SourceClass>>convertToFormat: which takes a TargetClass, finds the most specific fromSourceClass: message that particular TargetClass will understand, and passes back its answer.
- In SourceClass, define a registry containing interesting TargetClasses.
- Construct the save as.. menu from the registry.
- To output to a new XML format, run an XSD through XSDClassFactory, add the resulting TargetClasses to the appropriate SourceClass registries, and write some fromSourceClass: methods in each TargetClass.


Copyright (c) 2004 Brenda Larcom <asparagi@hhhh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
