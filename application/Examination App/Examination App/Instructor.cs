
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace Examination_App
{

using System;
    using System.Collections.Generic;
    
public partial class Instructor
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Instructor()
    {

        this.Departments = new HashSet<Department>();

        this.Ins_Dept_Cr = new HashSet<Ins_Dept_Cr>();

    }


    public int Ins_Id { get; set; }

    public string Ins_Name { get; set; }

    public string Ins_Email { get; set; }

    public string Ins_Password { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Department> Departments { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Ins_Dept_Cr> Ins_Dept_Cr { get; set; }

}

}
