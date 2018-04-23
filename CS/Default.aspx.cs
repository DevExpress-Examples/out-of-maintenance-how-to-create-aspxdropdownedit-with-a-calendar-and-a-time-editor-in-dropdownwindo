using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Globalization;

public partial class Default : System.Web.UI.Page
{
    protected void dde_Validation(object sender, ValidationEventArgs e)
    {
        try
        {
            if (e.Value != null && !String.IsNullOrEmpty(e.Value.ToString()))
                Convert.ToDateTime(e.Value);
        }
        catch (FormatException)
        {
            e.IsValid = false;
        }
    }
}