class Tree

	attr_accessor :node_name, :children

	def initialize(item, children = [])
		if item.is_a?({}.class)
			
			raise 'Invalid input size' if item.size != 1
			item.each do |k, v|
				@node_name = k
				raise 'Value is not hash' unless v.is_a?({}.class)

				if v.empty?
					@children = []
				else
					@children = v.map { |x, y| Tree.new({ x => y }) }
				end
			end
		else
			@node_name = item
			@children = children	
		end
	end

	def visit(&block)
		block.call self
	end

	def visit_all(&block)
		visit &block
		children.each { |c| c.visit_all &block }
	end
end

t = Tree.new({:grandpa => {:dad => {'child 1' => {}, 'child 2' => {}}, :uncle => {'child 3' => {}, 'child 4' => {}}}})
t.visit_all {|x| puts x.node_name }