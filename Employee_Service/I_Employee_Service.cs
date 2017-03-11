using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Threading.Tasks;

namespace Employee_Service
{
    [ServiceContract]
   public interface I_Employee_Service
    {
        // http://.........../Employees
        [WebGet(UriTemplate = "Employees")]
        [OperationContract]
        List<Emp> GetAllEmp();

        // http://.........../Departments
        [WebGet(UriTemplate = "Departments")]
        [OperationContract]
        List<Department> GetAllDepartment();

        // http://.........../Employee/1
        [WebGet(UriTemplate = "Employee/{Emp_ID}")]
        [OperationContract]
        Emp GetEmpByID(string Emp_ID);


        // http://.........../Department/1
        [WebGet(UriTemplate = "Department/{DP_ID}")]
        [OperationContract]
        Department GetDeptByID(string DP_ID);



        // POST http://.........../Employee
        [WebInvoke(Method = "POST", UriTemplate = "Employee", BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void InsertEmp(string Emp_ID, string Emp_Name, string DP_ID);

        // POST http://.........../Department
        [WebInvoke(Method = "POST", UriTemplate = "Department", BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void InsertDept(string DP_ID, string DP_Name);



        // PUT http://.........../Employee/1
        [WebInvoke(Method = "PUT", UriTemplate = "Employee/{Emp_ID}", BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void UpdateEmp(string Emp_ID, string Emp_Name, string DP_ID);


        // PUT http://.........../Department/1
        [WebInvoke(Method = "PUT", UriTemplate = "Department/{DP_ID}", BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void UpdateDept(string DP_Name, string DP_ID);


        [WebInvoke(Method = "DELETE", UriTemplate = "Employee/{Emp_ID}")]
        [OperationContract]
        int Delete_Emp(string Emp_ID);


        [WebInvoke(Method = "DELETE", UriTemplate = "Department/{DP_ID}")]
        [OperationContract]
        int Delete_Dept(string DP_ID);


    }
}
