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

        public int Delete_Emp(int EMP_ID)
        {
            string str = EMP_ID.ToString();
            int affected= c.Delete_Emp(str);
            return affected;
        }

        public int Delete_Dep(int DP_ID)
        {
            string str = DP_ID.ToString();
            int affected = c.Delete_Dept(str);
            return affected;
        }

        public Emp GetEmpByID(int EMP_ID)
        {
            string str = EMP_ID.ToString();
            return c.GetEmpByID(str);
        }

        public Department GetDeptByID(int DP_ID)
        {
            string str = DP_ID.ToString();
            return c.GetDeptByID(str);
        }

        public void InsertEmp(int EMP_ID, string Name,int DP_ID)
        {
            string emp = EMP_ID.ToString();
            string dep = DP_ID.ToString();
            c.InsertEmp(emp, Name, dep);
        }

        public void InsertDept(int DP_ID, string Name)
        {
            string dep = DP_ID.ToString();
            c.InsertDept(dep, Name);
        }

        public void UpdateEmp(int EMP_ID, string Name, int DP_ID)
        {
            string emp = EMP_ID.ToString();
            string dep = DP_ID.ToString();
            c.UpdateEmp(emp, Name, dep);
        }

        public void UpdateDept(string Name, int DP_ID)
        {
            string dep = DP_ID.ToString();
            c.UpdateDept(Name, dep);
        }




    }
}