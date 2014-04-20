using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string textReview = Request.Form["review"];
        string ratings1 = Request.Form["rate0"];
        profile1.InnerHtml = textReview+"\nThe overall rating is "+ratings1;
    }
}