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
    
    public partial class Evidence_Request
    {
        public int Evidence_Request_ID { get; set; }
        public string Evidence_Request_Details { get; set; }
        public string Case_Handler { get; set; }
        public string Employee { get; set; }
        public int Case_ID { get; set; }
        public Nullable<System.DateTime> evidence_request_date { get; set; }
    
        public virtual Case_Handler Case_Handler1 { get; set; }
        public virtual Employee Employee1 { get; set; }
        public virtual InvestigationCase1 InvestigationCase1 { get; set; }
    }
}
