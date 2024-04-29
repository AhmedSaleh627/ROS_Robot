#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
import tkinter as tk

class RobotController:
    def __init__(self):
        rospy.init_node('robot_controller', anonymous=True)
        self.cmd_vel_pub = rospy.Publisher('/my_robot/cmd_vel', Twist, queue_size=10)

    def move_forward(self):
        twist = Twist()
        twist.linear.x = 1.0
        self.cmd_vel_pub.publish(twist)

    def move_backward(self):
        twist = Twist()
        twist.linear.x = -1.0
        self.cmd_vel_pub.publish(twist)

    def move_left(self):
        twist = Twist()
        twist.angular.z = 1.0
        self.cmd_vel_pub.publish(twist)

    def move_right(self):
        twist = Twist()
        twist.angular.z = -1.0
        self.cmd_vel_pub.publish(twist)

    def stop(self):
        twist = Twist()
        self.cmd_vel_pub.publish(twist)

class GUI:
    def __init__(self, master, controller):
        self.master = master
        self.controller = controller
        self.master.title("Robot Controller")

        self.forward_button = tk.Button(self.master, text="Forward", command=self.controller.move_forward)
        self.forward_button.grid(row=0, column=1)

        self.backward_button = tk.Button(self.master, text="Backward", command=self.controller.move_backward)
        self.backward_button.grid(row=2, column=1)

        self.left_button = tk.Button(self.master, text="Left", command=self.controller.move_left)
        self.left_button.grid(row=1, column=0)

        self.right_button = tk.Button(self.master, text="Right", command=self.controller.move_right)
        self.right_button.grid(row=1, column=2)

        self.stop_button = tk.Button(self.master, text="Stop", command=self.controller.stop)
        self.stop_button.grid(row=1, column=1)

def main():
    controller = RobotController()
    root = tk.Tk()
    gui = GUI(root, controller)
    root.mainloop()

if __name__ == '__main__':
    main()
