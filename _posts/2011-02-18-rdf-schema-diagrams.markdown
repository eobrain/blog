---
date: '2011-02-18 14:08:25'
layout: post
slug: rdf-schema-diagrams
status: publish
ref: http://www.w3.org/2001/sw/RDFCore/Schema/200203/#ch_appendix_figs
title: RDF Schema Diagrams
wordpress_id: '1120'
categories:
- Programming
---

For some reason the [latest (2004) version of the RDF Schema specification](http://www.w3.org/TR/rdf-schema/) does not include the useful diagrams that were included in previous drafts.  Maybe they were omitted because the diagrams sacrificed some formalism for the sake of clarity.  Nevertheless I found those older diagrams useful for getting my head around some of the concepts, so here they are:

2002 Version
[![](http://www.w3.org/2001/sw/RDFCore/Schema/200203/constraints.gif)](http://www.w3.org/2001/sw/RDFCore/Schema/200203/#ch_appendix_figs)

1999 Version
[![](http://www.w3.org/TR/1998/WD-rdf-schema/hierarchy.gif)](http://www.w3.org/TR/1998/WD-rdf-schema/#constraints)

The [current 2004 version of the spec](http://www.w3.org/TR/rdf-schema/) does include these useful summary tables:


>

>
> ### 6.1 RDF classes
>
>


>
>


>
>
      Class name
      comment


>
>

> rdfs:Resource
>

> The class resource, everything.
>


>
>

> rdfs:Literal
>

> The class of literal values, e.g. textual strings and integers.
>


>
>

> rdf:XMLLiteral
>

> The class of XML literals values.
>


>
>

> rdfs:Class
>

> The class of classes.
>


>
>

> rdf:Property
>

> The class of RDF properties.
>


>
>

> rdfs:Datatype
>

> The class of RDF datatypes.
>


>
>

> rdf:Statement
>

> The class of RDF statements.
>


>
>

> rdf:Bag
>

> The class of unordered containers.
>


>
>

> rdf:Seq
>

> The class of ordered containers.
>


>
>

> rdf:Alt
>

> The class of containers of alternatives.
>


>
>

> rdfs:Container
>

> The class of RDF containers.
>


>
>

> rdfs:ContainerMembershipProperty
>

> The class of container membership properties, rdf:_1, rdf:_2, ...,
        all of which are sub-properties of 'member'.
>


>
>

> rdf:List
>

> The class of RDF Lists.
>


>
> ### 6.2 RDF
properties
>
>


>
>


>
>
      Property name
      comment
      domain
      range


>
>

> rdf:type
>

> The subject is an instance of a class.
>

> rdfs:Resource
>

> rdfs:Class
>


>
>

> rdfs:subClassOf
>

> The subject is a subclass of a class.
>

> rdfs:Class
>

> rdfs:Class
>


>
>

> rdfs:subPropertyOf
>

> The subject is a subproperty of a property.
>

> rdf:Property
>

> rdf:Property
>


>
>

> rdfs:domain
>

> A domain of the subject property.
>

> rdf:Property
>

> rdfs:Class
>


>
>

> rdfs:range
>

> A range of the subject property.
>

> rdf:Property
>

> rdfs:Class
>


>
>

> rdfs:label
>

> A human-readable name for the subject.
>

> rdfs:Resource
>

> rdfs:Literal
>


>
>

> rdfs:comment
>

> A description of the subject resource.
>

> rdfs:Resource
>

> rdfs:Literal
>


>
>

> rdfs:member
>

> A member of the subject resource.
>

> rdfs:Resource
>

> rdfs:Resource
>


>
>

> rdf:first
>

> The first item in the subject RDF list.
>

> rdf:List
>

> rdfs:Resource
>


>
>

> rdf:rest
>

> The rest of the subject RDF list after the first item.
>

> rdf:List
>

> rdf:List
>


>
>

> rdfs:seeAlso
>

> Further information about the subject resource.
>

> rdfs:Resource
>

> rdfs:Resource
>


>
>

> rdfs:isDefinedBy
>

> The definition of the subject resource.
>

> rdfs:Resource
>

> rdfs:Resource
>


>
>

> rdf:value
>

> Idiomatic property used for structured values (see the RDF Primer for [an
        example](http://www.w3.org/TR/2004/REC-rdf-primer-20040210/#example16) of its usage).
>

> rdfs:Resource
>

> rdfs:Resource
>


>
>

> rdf:subject
>

> The subject of the subject RDF statement.
>

> rdf:Statement
>

> rdfs:Resource
>


>
>

> rdf:predicate
>

> The predicate of the subject RDF statement.
>

> rdf:Statement
>

> rdfs:Resource
>


>
>

> rdf:object
>

> The object of the subject RDF statement.
>

> rdf:Statement
>

> rdfs:Resource
>


>
> In addition to these classes and properties, RDF also uses properties
called `rdf:_1`, `rdf:_2`, `rdf:_3`... etc.,
each of which is both a sub-property of `rdfs:member` and an
instance of the class `rdfs:ContainerMembershipProperty`. There is
also an instance of `rdf:List` called `rdf:nil` that is
an empty `rdf:List`.
>
>



