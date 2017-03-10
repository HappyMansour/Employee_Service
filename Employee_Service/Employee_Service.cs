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

        public int Delete_Emp(string EMP_ID)
        {
            int ID = int.Parse(EMP_ID);
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

        public Emp GetEmpByID(string EMP_ID)
        {
            var id = int.Parse(EMP_ID);
            var emp = Context.Emps.Find(id);
            return emp;

        }

        public Department GetDeptByID(string DP_ID)
        {
            var id = int.Parse(DP_ID);
            var dep = Context.Departments.Find(id);
            return dep;
        }

        public void InsertEmp(string EMP_ID, string Name, string DP_ID)
        {
            var x = int.Parse(EMP_ID);
            var y = int.Parse(DP_ID);
            Emp emp = new Emp() { Emp_ID = x, Emp_Name = Name, DP_ID = y };
            Context.Emps.Add(emp);
            Context.SaveChanges();
        }

        public void InsertDept(string DP_ID, string Name)
        {
            var x = int.Parse(DP_ID);
            Department dep = new Department() { DP_ID = x, DP_Name = Name };
            Context.Departments.Add(dep);
            Context.SaveChanges();
        }




        public void UpdateEmp(string EMP_ID, string Name, string DP_ID)
        {
            var x = int.Parse(EMP_ID);
            var y = int.Parse(DP_ID);
            var employee = Context.Emps.Find(x);
            if (employee != null)
            {
                employee.Emp_Name = Name;
                employee.DP_ID = y;
                Context.SaveChanges();
            }
        }

        public void UpdateDept(string Name, string DP_ID)
        {
            var y = int.Parse(DP_ID);
            var dep = Context.Departments.Find(y);
            if (dep != null)
            {
                dep.DP_Name = Name;
                Context.SaveChanges();
            }
        }
    }
}
