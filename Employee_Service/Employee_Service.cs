using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Employee_Service
{
    public class Employee_Service:I_Employee_Service
    {

        ServiceModel Context = new ServiceModel();
        public List<Emp> GetAllEmp()
        {
            return Context.Emps.ToList();
        }

        public List<Department> GetAllDepartment()
        {
            return Context.Departments.ToList();
        }

        public int Delete_Emp(string Emp_ID)
        {
            int ID = int.Parse(Emp_ID);
            var employee = Context.Emps.Find(ID);
            if (employee != null)
            {
                Context.Emps.Remove(employee);
                Context.SaveChanges();
                return 1;
            }
            else
            {
                return 0;
            }
        }

        public int Delete_Dept(string DP_ID)
        {
            int ID = int.Parse(DP_ID);
            var dept = Context.Emps.Find(ID);
            if (dept != null)
            {
                Context.Emps.Remove(dept);
                Context.SaveChanges();
                return 1;
            }
            else
            {
                return 0;
            }
        }

        public Emp GetEmpByID(string Emp_ID)
        {
            var id = int.Parse(Emp_ID);
            var emp = Context.Emps.Find(id);
            return emp;

        }

        public Department GetDeptByID(string DP_ID)
        {
            var id = int.Parse(DP_ID);
            var dep = Context.Departments.Find(id);
            return dep;
        }

        public void InsertEmp(string Emp_ID, string Emp_Name, string DP_ID)
        {
            var x = int.Parse(Emp_ID);
            var y = int.Parse(DP_ID);
            Emp emp = new Emp() { Emp_ID = x, Emp_Name = Emp_Name, DP_ID = y };
            Context.Emps.Add(emp);
            Context.SaveChanges();
        }

        public void InsertDept(string DP_ID, string DP_Name)
        {
            var x = int.Parse(DP_ID);
            Department dep = new Department() { DP_ID = x, DP_Name = DP_Name };
            Context.Departments.Add(dep);
            Context.SaveChanges();
        }




        public void UpdateEmp(string Emp_ID, string Emp_Name, string DP_ID)
        {
            var x = int.Parse(Emp_ID);
            var y = int.Parse(DP_ID);
            var employee = Context.Emps.Find(x);
            if (employee != null)
            {
                employee.Emp_Name = Emp_Name;
                employee.DP_ID = y;
                Context.SaveChanges();
            }
        }

        public void UpdateDept(string DP_Name, string DP_ID)
        {
            var y = int.Parse(DP_ID);
            var dep = Context.Departments.Find(y);
            if (dep != null)
            {
                dep.DP_Name = DP_Name;
                Context.SaveChanges();
            }
        }
    }
}
