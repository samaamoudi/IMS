//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IMS2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Termination_Request
    {
        public int Termination_Request_ID { get; set; }
        public System.DateTime Termination_Request_Date { get; set; }
        public string Termination_Request_Justification { get; set; }
        public int Case_ID { get; set; }
        public string Employee_ID { get; set; }
        public string Case_Handler_ID { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual InvestigationCase1 InvestigationCase1 { get; set; }
    }
}
