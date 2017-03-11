using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebClient.ServiceRef;

namespace WebClient
{
    public class BusinessLayer

    {
        ServiceRef.I_Employee_ServiceClient c = new ServiceRef.I_Employee_ServiceClient("WSHttpBinding_I_Employee_Service");

        public List<Emp> GetAllEmp()
        {
            return c.GetAllEmp().ToList();
        }
        public List<Department> GetAllDep()
        {
            return c.GetAllDepartment().ToList();
        }

        public int Delete_Emp(int Emp_ID)
        {
            string str =(Emp_ID).ToString();
            int affected= c.Delete_Emp(str);
            return affected;
        }

        public int Delete_Dep(int DP_ID)
        {
            string str = DP_ID.ToString();
            int affected = c.Delete_Dept(str);
            return affected;
        }

        public Emp GetEmpByID(int Emp_ID)
        {
            string str = Emp_ID.ToString();
            return c.GetEmpByID(str);
        }

        public Department GetDeptByID(int DP_ID)
        {
            string str = DP_ID.ToString();
            return c.GetDeptByID(str);
        }

        public void InsertEmp(int Emp_ID, string Emp_Name, int DP_ID)
        {
            string emp = Emp_ID.ToString();
            string dep = DP_ID.ToString();
            c.InsertEmp(emp, Emp_Name, dep);
        }

        public void InsertDept(int DP_ID, string DP_Name)
        {
            string dep = DP_ID.ToString();
            c.InsertDept(dep, DP_Name);
        }

        public void UpdateEmp(int Emp_ID, string Emp_Name, int DP_ID)
        {
            string emp = Emp_ID.ToString();
            string dep = DP_ID.ToString();
            c.UpdateEmp(emp, Emp_Name, dep);
        }

        public void UpdateDept(string DP_Name, int DP_ID)
        {
            string dep = DP_ID.ToString();
            c.UpdateDept(DP_Name, dep);
        }




    }
}