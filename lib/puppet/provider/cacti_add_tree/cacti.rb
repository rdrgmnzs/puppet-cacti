Puppet::Type.type(:cacti_add_tree).provide(:cacti_add_tree) do

  optional_commands :php      => 'php'
  optional_commands :mysql    => 'mysql'

  def create

    if @resource[:type] == :tree
      php('/var/www/cacti/cli/add_tree.php', "--type=tree", "--name=#{@resource[:title]}" )
    else

      treeid = mysql('-NBe', "select id from cacti.graph_tree WHERE name=\"#{@resource[:tree]}\"").match(/.*/)[0]

      parentid = mysql('-NBe', "select id from cacti.graph_tree_items WHERE title=\"#{@resource[:parentnode]}\"").match(/.*/)[0]

      if @resource[:nodetype] == :header

        if @resource[:parentnode] == ''
          php('/var/www/cacti/cli/add_tree.php', "--type=node", "--tree-id=#{treeid}" , "--node-type=header", "--name=#{@resource[:title]}" )
        else
          php('/var/www/cacti/cli/add_tree.php', "--type=node", "--tree-id=#{treeid}" , "--node-type=header", "--name=#{@resource[:title]}", "--parent-node=#{parentid}" )
        end

      elsif @resource[:nodetype] == :host

        hostid = mysql('-NBe', "select id from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]

        if @resource[:parentnode] == ''
          php('/var/www/cacti/cli/add_tree.php', "--type=node", "--tree-id=#{treeid}" , "--node-type=host", "--host-id=#{hostid}" )
        else
          php('/var/www/cacti/cli/add_tree.php', "--type=node", "--tree-id=#{treeid}" , "--node-type=host", "--host-id=#{hostid}", "--parent-node=#{parentid}" )
        end

      elsif @resource[:nodetype] == :graph
        graphid = mysql('-NBe', "select local_graph_id from cacti.graph_templates_graph WHERE title_cache=\"#{@resource[:title]}\"").match(/.*/)[0]

        if @resource[:parentnode] == ''
          php('/var/www/cacti/cli/add_tree.php', "--type=node", "--tree-id=#{treeid}" , "--node-type=graph", "--graph-id=#{graphid}" )
        else
          php('/var/www/cacti/cli/add_tree.php', "--type=node", "--tree-id=#{treeid}" , "--node-type=graph", "--graph-id=#{graphid}", "--parent-node=#{parentid}" )
        end

      end

    end

  end

  def destroy
  
  end

  def type
    treeid = mysql('-NBe', "select id from cacti.graph_tree WHERE name=\"#{@resource[:title]}\"").match(/\A[0-9]+/)
   
    if treeid
      return :tree
    else 
      return :node
    end

  end

  def type=(value)
  end

  def exists?
    begin

      if @resource[:type] == :tree

        mysql('-NBe', "select id from cacti.graph_tree WHERE name=\"#{@resource[:title]}\"").match(/\A[0-9]+/)

      elsif
        parentid = mysql('-NBe', "select id from cacti.graph_tree_items WHERE title=\"#{@resource[:parentnode]}\"").match(/.*/)[0]

        if @resource[:nodetype] == :header
          
          mysql('-NBe', "select id from cacti.graph_tree_items WHERE title=\"#{@resource[:title]}\"").match(/\A[0-9]+/)

        elsif @resource[:nodetype] == :host

          hostid = mysql('-NBe', "select id from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]

          mysql('-NBe', "select id from cacti.graph_tree_items WHERE host_id=\"#{hostid}\"").match(/\A[0-9]+/)

        elsif @resource[:nodetype] == :graph

          graphid = mysql('-NBe', "select local_graph_id from cacti.graph_templates_graph WHERE title_cache=\"#{@resource[:title]}\"").match(/.*/)[0]

          mysql('-NBe', "select id from cacti.graph_tree_items WHERE local_graph_id=\"#{graphid}\"").match(/\A[0-9]+/)

        end

      end
    rescue => e
      debug(e.message)
      return nil
    end
  end

end
