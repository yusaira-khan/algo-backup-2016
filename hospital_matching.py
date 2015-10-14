__author__ = 'yusaira-khan'


class hospital():
    def __init__(self):
        self.preference_list = []
        self.matched_students = []
        self.unavailable_students = []

class student():
    def __init__(self):
        self.preference_list = []
        self.matched_hospital = None
        self.unavailable_hospitals = []

def match(all_hospitals, all_students):
    hospitals_with_open_postions = all_hospitals
    while hospitals_with_open_postions:
        pass




