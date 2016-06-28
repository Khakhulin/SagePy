#this script for showing graph 
points = {0:[1,3,5], 1:[3,4], 2:[4,5], 3:[2,1], 4:[5,1], 5:[0,2]}
Gr = Graph(points)
Gr.show()
#search in graph
def SearchInGraph(G,first, last):
	resList = list(G.depth_first_search(first))
	colors = dict([('white', list(G.vertices())), ('green',[]), ('red',[])])
	list_graph = []
	for i in resList:
		colors['white'].pop(colors['white'].index(i))
		colors['red'].append(i)
		list_graph.append(G.plot(save_pos = True, vertex_colors = colors))
		if i == last:
			break
		colors['red'].pop()
		colors['green'].append(i)
	animate(list_graph).show(delay = 35)

SearchInGraph(Gr,0,4)