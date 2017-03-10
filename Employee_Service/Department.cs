namespace Employee_Service
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Runtime.Serialization;

    [DataContract]
    public partial class Department
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Department()
        {
            Emps = new HashSet<Emp>();
        }

        [Key]
        [DataMember(Name = "Dept_ID", Order = 0)]
        public int DP_ID { get; set; }

        [DataMember(Name = "Dept_Name", Order = 1)]
        [Required]
        [StringLength(50)]
        public string DP_Name { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Emp> Emps { get; set; }
    }
}
