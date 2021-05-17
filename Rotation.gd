extends Node2D

var r=1
var t = 0
var theta=0
var dtheta=0
func _process(_delta):
	get_node("Square").transform=rotacion(get_node("SpinningWheel").transform, get_node("Square").transform)
	pass

func rotacion(var a, var b):
	t+=0.006
	dtheta= -1-(0.6*t)+(0.25*(pow(t,2)))
	b.origin.x=a.origin.x+r*cos(dtheta)*150
	b.origin.y=a.origin.y+r*sin(dtheta)*150
	get_node("t_label").set_text("t = "+str(t)+" unidades")
	get_node("theta_label").set_text("theta = "+str(dtheta)+" unidades")
	return b
