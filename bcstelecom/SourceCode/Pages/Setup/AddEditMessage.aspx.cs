using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_Admin_AddEditMessage : BasePage
{
    int ID
    {
        set { ViewState["ID"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["ID"].ToString());
            }
            catch
            {
                return 0;
            }
        }
    }

    bllMessage objMessage = new bllMessage();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            LoadMembers();

            if (Request.QueryString["ID"] != null)
            {
                ID = Convert.ToInt32(Request.QueryString["ID"].ToString());

                Populate();
            }

        }
    }

    private void LoadMembers()
    {
        DataTable dt = new bllMember().GetAllUser();
        chkMemberList.DataSource = dt;
        chkMemberList.DataBind();

    }


    private void Populate()
    {
        DataTable dt = objMessage.GetByID(ID);
        if (dt.Rows.Count > 0)
        {
            tbxDate.Text = dt.Rows[0]["displaytill"].ToString() == "" ? "" : Convert.ToDateTime(dt.Rows[0]["displaytill"].ToString()).ToString("dd-MMM-yyyy");
            txtMessage.Content = Common.Decoding(dt.Rows[0]["message"].ToString());

            if (Convert.ToInt32(dt.Rows[0]["senttoall"].ToString()) == 1)
            {
                rdoAll.Checked = true;
                cpe1.Collapsed = true;
            }
            else if (Convert.ToInt32(dt.Rows[0]["senttoall"].ToString()) == 2)
            {
                rdoOfficial.Checked = true;
                cpe1.Collapsed = true;
            }
            else
            {
                rdoSelected.Checked = true;
                cpe1.Collapsed = false;
                DataTable dtMembers = objMessage.GetRecepientByID(ID);

                foreach (DataRow dr in dtMembers.Rows)
                {
                    foreach (ListItem li in chkMemberList.Items)
                    {
                        if (dr["memberid"].ToString() == li.Value.ToString())
                        {
                            li.Selected = true;
                        }
                    }
                }
            }
        }
    }

    public void OnBtnSave_Click(object sender, EventArgs e)
    {
        if (rdoSelected.Checked)
        {
            bool RecepientSelected = false;

            foreach (ListItem li in chkMemberList.Items)
            {
                if (li.Selected)
                {
                    RecepientSelected = true;
                    break;
                }
            }

            if (RecepientSelected == false)
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Select recepient.";
                return;
            }
        }

        Nullable<DateTime> displaytill = null;

        if (tbxDate.Text != "" && Common.IsDate(tbxDate.Text))
            displaytill = Convert.ToDateTime(tbxDate.Text);

        if (rdoOfficial.Checked)
        {
            if (ID == 0)
            {
                objMessage.Insert(Common.Encoding(txtMessage.Content), displaytill, User.Identity.Name, 2);
                
            }
            else
            {
                objMessage.Update(ID, Common.Encoding(txtMessage.Content), displaytill, User.Identity.Name, 2);
            }
        }
        else if (rdoAll.Checked)
        {
            if (ID == 0)
            {
                objMessage.Insert(Common.Encoding(txtMessage.Content), displaytill, User.Identity.Name, 1);
                
            }
            else
            {
                objMessage.Update(ID, Common.Encoding(txtMessage.Content), displaytill, User.Identity.Name, 1);
            }
        }
        else
        {
            if (ID == 0)
            {
                objMessage.Insert(Common.Encoding(txtMessage.Content), displaytill, User.Identity.Name, 3);
               
            }
            else
            {
                objMessage.Update(ID, Common.Encoding(txtMessage.Content), displaytill, User.Identity.Name, 3);
            }
            foreach (ListItem li in chkMemberList.Items)
            {
                if (li.Selected)
                {
                    objMessage.InsertRecepient(ID, int.Parse(li.Value));
                }
            }
        }
        MessageController.Show("Send successfully.", MessageType.Information, Page);
        Clear();
    }

    private void Clear()
    {
        txtMessage.Content = "";
        tbxDate.Text = "";
        foreach (ListItem li in chkMemberList.Items)
        {
            if (li.Selected)
            {
                li.Selected = false;
            }
        }

    }


}
