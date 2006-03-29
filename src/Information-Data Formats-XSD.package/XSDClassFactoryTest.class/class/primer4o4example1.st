non-normative examples
primer4o4example1
	"Example:  Deriving RestrictedPurchaseOrderType by Restriction from PurchaseOrderType from XML Schema Part 0: Primer Second Edition."

	^'<complexType name="RestrictedPurchaseOrderType">
  <complexContent>
    <restriction base="ipo:PurchaseOrderType">
      <sequence>
        <element name="shipTo" type="ipo:Address"/>
        <element name="billTo" type="ipo:Address"/>
        <element ref="ipo:comment" minOccurs="1"/>
        <element name="items"  type="ipo:Items"/>
      </sequence>
    </restriction>
  </complexContent>
</complexType>'