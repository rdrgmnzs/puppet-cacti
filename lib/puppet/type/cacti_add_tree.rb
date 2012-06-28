# This has to be a separate type to enable collecting
Puppet::Type.newtype(:cacti_add_tree) do
  @doc = @doc = <<-EOT
     Creates new trees and adds objects to existing ones.
    
     Parameters:
       title (required)              - the name of the tree when creating new tree
                                     - the name of the desired header when adding new header node.
                                     - the name of host to be added when adding new host node.
                                     - the name of graph to be added when adding new host node.
       type (required)               - The type of object that will be added [tree, node]
                                      * tree - when adding a new tree
                                      * node - when adding a new node
       nodetype (required for nodes) - The type of node you are adding [header, host, graph]
       tree  (required for nodes)    - The name of the tree the node will be added to.
       parentnode (optional)         - The name of the node the new node will be added under. If this is missing the new node will be added under the specified tree.
    
     Sample Usage:
    
  EOT

  ensurable

  newparam(:title, :namevar=>true) do
    desc "title (required)              - the name of the tree when creating new tree
                                        - the name of the desired header when adding new header node.
                                        - the name of host to be added when adding new host node.
                                        - the name of graph to be added when adding new host node."
    
    validate do |value|
      if value == ""
        raise ArgumentError,
              "Failed: A title is required!"
      else
        super
      end
    end
    
  end

  newproperty(:type) do
    desc "type (required)               - The type of object that will be added [tree, node]
                                          * tree - when adding a new tree
                                          * node - when adding a new node"
    
    validate do |value|
      if value == ""
        raise ArgumentError,
              "Failed: A type is required!"
      else
        super
      end
    end
  
    newvalues(:tree, :node )
    
  end

  newparam(:nodetype) do
    desc "nodetype (required for nodes) - The type of node you are adding [header, host, graph]"

    newvalues(:header, :host, :graph )

  end

  newparam(:tree) do
    desc "tree  (required for nodes)    - The name of the tree the node will be added to."

    defaultto ""
  end

  newparam(:parentnode) do
    desc "parentnode (optional)         - The name of the node the new node will be added under. If this is missing the new node will be added under the specified tree."

    defaultto ""

  end

end
