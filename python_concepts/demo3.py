from python_concepts.demo2 import Employee

print(Employee.company_name)
print(Employee.company_location)

Employee.company_name="L&T"

emp1=Employee(101)
emp2=Employee(102)

emp1.emp_id=101
emp1.emp_name='John'
emp1.emp_salary=9000

emp2.emp_id=102
emp2.emp_name="kim"
emp2.emp_salary=8000

emp2=emp1

print(emp1.emp_id)
print(emp2.emp_id)

print(emp1.a)
print(emp1.b)
print(emp1.emp_id)
emp1.print_a()


print(emp1)
print(type(emp1))


print(Employee.company_name)
print(Employee.company_location)


emp2.display_emp_id()

Employee.print_author_name()