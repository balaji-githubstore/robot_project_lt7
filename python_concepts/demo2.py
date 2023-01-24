
#class is template or blueprint or type or datatype
class Parent:
    def __init__(self):
        self.a=None
        self.b=20

    def print_a(self):
        print(self.a+self.b)

class Employee(Parent):
    company_name=None
    company_location=None
    def __init__(self):
        self.emp_id=None
        self.emp_name=None
        self.emp_salary=None

    def display_emp_id(self):
        print(self.emp_id)

    @staticmethod
    def print_author_name():
        print("Balaji Dinakaran")