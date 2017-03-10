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
        [WebGet(UriTemplate = "Employee/{EMP_ID}")]
        [OperationContract]
        Emp GetEmpByID(string EMP_ID);


        // http://.........../Department/1
        [WebGet(UriTemplate = "Department/{DP_ID}")]
        [OperationContract]
        Department GetDeptByID(string DP_ID);



        // POST http://.........../Employee
        [WebInvoke(Method = "POST", UriTemplate = "Employee", BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void InsertEmp(string EMP_ID, string Name, string DP_ID);

        // POST http://.........../Department
        [WebInvoke(Method = "POST", UriTemplate = "Department", BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void InsertDept(string DP_ID, string Name);



        // PUT http://.........../Employee/1
        [WebInvoke(Method = "PUT", UriTemplate = "Employee/{EMP_ID}", BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void UpdateEmp(string EMP_ID, string Name, string DP_ID);


        // PUT http://.........../Department/1
        [WebInvoke(Method = "PUT", UriTemplate = "Department/{DP_ID}", BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void UpdateDept(string Name, string DP_ID);


        [WebInvoke(Method = "DELETE", UriTemplate = "Employee/{EMP_ID}")]
        [OperationContract]
        int Delete_Emp(string EMP_ID);


        [WebInvoke(Method = "DELETE", UriTemplate = "Department/{DP_ID}")]
        [OperationContract]
        int Delete_Dept(string DP_ID);


    }
}
